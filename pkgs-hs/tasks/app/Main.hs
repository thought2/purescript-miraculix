{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}

module Main where

import Data.String (fromString)
import Data.Text (unpack)
import GHC.IO.Encoding
import OptTask
import Options.Applicative
import Turtle hiding (echo, sh, stdout, switch)
import qualified Turtle as T

--------------------------------------------------------------------------------
-- Tasks
--------------------------------------------------------------------------------

psBuild :: Task ()
psBuild =
  task
    ("ps-build", "Build the PureScript project")
    [ dep psClean (),
      dep psTest ()
    ]
    (pure ())
    ( \_ ctx -> do
        echo ctx "Hello, build!"
        sh ctx "spago build --purs-args '--censor-lib' --config lib.dhall"
    ) -- TODO: fix warnings and add --strict

psClean :: Task ()
psClean =
  task
    ("ps-clean", "")
    []
    (pure ())
    (\_ ctx -> sh ctx "rm -rf output .spago")

psDocs :: Task ()
psDocs =
  task
    ("ps-docs", "")
    [dep psClean ()]
    (pure ())
    (\_ ctx -> sh ctx "spago docs")

tsClean :: Task ()
tsClean =
  task
    ("ts-clean", "")
    []
    (pure ())
    (\_ ctx -> sh ctx "rm -rf node_modules pkgs-ts/*/node_modules")

tsInstall :: Task ()
tsInstall =
  task
    ("ts-install", "")
    [dep tsClean ()]
    (pure ())
    (\_ ctx -> sh ctx "yarn install --pure-lockfile")

nixDocs :: Task ()
nixDocs =
  task
    ("nix-docs", "")
    [dep generate (), dep tsInstall ()]
    (pure ())
    (\_ ctx -> sh ctx "yarn workspace docs build")

dist :: Task ()
dist =
  task
    ("dist", "")
    [dep nixDocs (), dep psDocs ()]
    (pure ())
    ( \_ ctx -> do
        sh ctx "rm -rf dist"
        sh ctx "mkdir -p dist/docs/purescript"
        sh ctx "cp -r generated-docs/html/** -t dist/docs/purescript"
        sh ctx "mkdir -p dist/docs/nix"
        sh ctx "cp -r pkgs-ts/docs/public/** -t dist/docs/nix"
    )

runNixExample :: Task ()
runNixExample =
  task
    ("run-nix-example", "")
    []
    (pure ())
    (\_ ctx -> sh ctx "nix-build nix-example/test.nix")

psTest :: Task ()
psTest =
  task
    ("ps-test", "")
    [dep psClean ()]
    (pure ())
    ( \_ ctx -> do
        sh ctx "spago build --config tests.dhall"
        sh ctx "nix-build -E '(import ./output/Test.Main/default.nix).main null'"
    )

lockPkgs :: Task ()
lockPkgs =
  task
    ("lock-pkgs", "")
    [dep tsInstall ()]
    (pure ())
    (\_ ctx -> sh ctx "yarn workspace lock-pkgs ts-node src/index.ts")

bundle :: Task ()
bundle =
  task
    ("bundle", "")
    [ dep tsInstall (),
      dep psBuild ()
    ]
    (pure ())
    (\_ ctx -> sh ctx "yarn workspace bundle-nix ts-node src/index.ts")

materialize :: Task ()
materialize =
  task
    ("materialize", "")
    [dep bundle ()]
    (pure ())
    (\_ _ -> pure ())

checkMaterialize :: Task ()
checkMaterialize =
  task
    ("check-materialize", "")
    [dep materialize (), dep checkStatus ()]
    (pure ())
    (\_ _ -> pure ())

checkStatus :: Task ()
checkStatus =
  task
    ("check-status", "")
    []
    (pure ())
    ( \_ ctx -> do
        let gitSt = inshell "git status -s" ""
        r <- strict gitSt
        stdout ctx gitSt
        when
          (r /= "")
          ( do
              sh ctx "git diff"
              exit $ ExitFailure 1
          )
    )

taskGraph :: Task ()
taskGraph =
  task
    ("task-graph", "")
    []
    (pure ())
    ( \_ ctx -> do
        getGraph allTasks
          & (select . textToLines . fromString)
          & inshell "dot -Tsvg"
          & output (decodeString "materialized/task-deps.svg")
    )

generate :: Task ()
generate =
  task
    ("generate", "")
    []
    (pure ())
    ( \_ ctx -> do
        sh ctx "rm -rf generated"
        sh ctx "nix build .#docsJson -o generated/docs.json"
        sh ctx "nix build .#tsTypes -o generated/types.ts"
    )

ci :: Task ()
ci =
  task
    ("ci", "")
    [ dep checkMaterialize (),
      dep psBuild (),
      dep dist ()
    ]
    (pure ())
    (\_ ctx -> pure ())

--------------------------------------------------------------------------------
-- Main
--------------------------------------------------------------------------------

allTasks =
  [ mk psBuild,
    mk psClean,
    mk psDocs,
    mk tsClean,
    mk nixDocs,
    mk tsInstall,
    mk dist,
    mk runNixExample,
    mk psTest,
    mk lockPkgs,
    mk bundle,
    mk materialize,
    mk checkMaterialize,
    mk checkStatus,
    mk taskGraph,
    mk generate,
    mk ci
  ]

main = do
  setLocaleEncoding utf8
  runTasks allTasks
