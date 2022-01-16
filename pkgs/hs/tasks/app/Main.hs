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
  task_
    ("ps-build", "Build the PureScript project")
    [ dep psClean (),
      dep psTest ()
    ]
    $ \ctx -> do
      echo ctx "Hello, build!"
      sh ctx "spago build --purs-args '--censor-lib' --config lib.dhall"

-- TODO: fix warnings and add --strict

psClean :: Task ()
psClean =
  task_
    ("ps-clean", "")
    []
    $ \ctx -> sh ctx "rm -rf output .spago"

psDocs :: Task ()
psDocs =
  task_
    ("ps-docs", "")
    [dep psClean ()]
    $ \ctx -> sh ctx "spago docs"

tsClean :: Task ()
tsClean =
  task_
    ("ts-clean", "")
    []
    $ \ctx -> sh ctx "rm -rf node_modules pkgs-ts/*/node_modules"

tsInstall :: Task ()
tsInstall =
  task_
    ("ts-install", "")
    [dep tsClean ()]
    $ \ctx -> sh ctx "yarn install --pure-lockfile"

nixDocs :: Task ()
nixDocs =
  task_
    ("nix-docs", "")
    [dep generate (), dep tsInstall ()]
    $ \ctx -> sh ctx "yarn workspace docs build"

dist :: Task ()
dist =
  task_
    ("dist", "")
    [dep nixDocs (), dep psDocs ()]
    $ \ctx -> do
      sh ctx "rm -rf dist"
      sh ctx "mkdir -p dist/docs/purescript"
      sh ctx "cp -r generated-docs/html/** -t dist/docs/purescript"
      sh ctx "mkdir -p dist/docs/nix"
      sh ctx "cp -r pkgs-ts/docs/public/** -t dist/docs/nix"

runNixExample :: Task ()
runNixExample =
  task_
    ("run-nix-example", "")
    []
    $ \ctx -> sh ctx "nix-build nix-example/test.nix"

psTest :: Task ()
psTest =
  task_
    ("ps-test", "")
    [dep psClean ()]
    $ \ctx -> do
      sh ctx "spago build --config tests.dhall"
      sh ctx "nix-build -E '(import ./output/Test.Main/default.nix).main null'"

lockPkgs :: Task ()
lockPkgs =
  task_
    ("lock-pkgs", "")
    [dep tsInstall ()]
    $ \ctx -> sh ctx "yarn workspace lock-pkgs ts-node src/index.ts"

bundle :: Task ()
bundle =
  task_
    ("bundle", "")
    [ dep tsInstall (),
      dep psBuild ()
    ]
    $ \ctx -> sh ctx "yarn workspace bundle-nix ts-node src/index.ts"

materialize :: Task ()
materialize =
  task_
    ("materialize", "")
    [dep bundle ()]
    $ \_ -> pure ()

checkMaterialize :: Task ()
checkMaterialize =
  task_
    ("check-materialize", "")
    [dep materialize (), dep checkStatus ()]
    $ \_ -> pure ()

checkStatus :: Task ()
checkStatus =
  task_
    ("check-status", "")
    []
    $ \ctx -> do
      let gitSt = inshell "git status -s" ""
      r <- strict gitSt
      stdout ctx gitSt
      when
        (r /= "")
        (exit $ ExitFailure 1)

taskGraph :: Task ()
taskGraph =
  task_
    ("task-graph", "")
    []
    $ \ctx -> do
      getGraph allTasks
        & (select . textToLines . fromString)
        & inshell "dot -Tsvg"
        & output (decodeString "materialized/task-deps.svg")

generate :: Task ()
generate =
  task_
    ("generate", "")
    []
    $ \ctx -> do
      sh ctx "rm -rf generated"
      sh ctx "nix build .#docsJson -o generated/docs.json"
      sh ctx "nix build .#tsTypes -o generated/types.ts"

tsDocsDevelop :: Task ()
tsDocsDevelop =
  task_
    ("ts-docs-develop", "")
    []
    $ \ctx -> do
      sh ctx "yarn workspace docs develop"

ci :: Task ()
ci =
  task_
    ("ci", "")
    [ dep checkMaterialize (),
      dep psBuild (),
      dep dist ()
    ]
    $ \ctx -> pure ()

--------------------------------------------------------------------------------
-- Main
--------------------------------------------------------------------------------

allTasks :: [Task']
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
    mk tsDocsDevelop,
    mk ci
  ]

main :: IO ()
main = do
  setLocaleEncoding utf8
  runTasks allTasks
