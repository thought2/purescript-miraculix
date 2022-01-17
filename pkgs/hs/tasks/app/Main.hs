{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}

module Main where

import Data.String (fromString)
import Data.Text (unpack)
import GHC.IO.Encoding
import OptTask
import OptTask.Opts
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
    [ psClean,
      psTest
    ]
    $ \Ctx {..} -> do
      echo "Hello, build!"
      sh "spago build --purs-args '--censor-lib' --config lib.dhall"

-- TODO: fix warnings and add --strict

psClean :: Task ()
psClean =
  task_
    ("ps-clean", "")
    []
    $ \Ctx {..} -> sh "rm -rf output .spago"

psDocs :: Task ()
psDocs =
  task_
    ("ps-docs", "")
    [psClean]
    $ \Ctx {..} -> sh "spago docs"

tsClean :: Task ()
tsClean =
  task_
    ("ts-clean", "")
    []
    $ \Ctx {..} -> sh "rm -rf node_modules pkgs-ts/*/node_modules"

tsInstall :: Task ()
tsInstall =
  task_
    ("ts-install", "")
    [tsClean]
    $ \Ctx {..} -> sh "yarn install --pure-lockfile"

hsWatch :: Task ()
hsWatch =
  task_
    ("hs-watch", "")
    [tsClean]
    $ \Ctx {..} -> sh "ghcid --topmost --command='cabal repl all'"

nixDocs :: Task ()
nixDocs =
  task_
    ("nix-docs", "")
    [generate, tsInstall]
    $ \Ctx {..} -> sh "yarn workspace docs build"

dist :: Task ()
dist =
  task_
    ("dist", "")
    [nixDocs, psDocs]
    $ \Ctx {..} -> do
      sh "rm -rf dist"
      sh "mkdir -p dist/docs/purescript"
      sh "cp -r generated-docs/html/** -t dist/docs/purescript"
      sh "mkdir -p dist/docs/nix"
      sh "cp -r pkgs/ts/docs/public/** -t dist/docs/nix"

runNixExample :: Task ()
runNixExample =
  task_
    ("run-nix-example", "")
    []
    $ \Ctx {..} -> sh "nix-build nix-example/test.nix"

psTest :: Task ()
psTest =
  task_
    ("ps-test", "")
    [psClean]
    $ \Ctx {..} -> do
      sh "spago build --config tests.dhall"
      sh "nix-build -E '(import ./output/Test.Main/default.nix).main null'"

lockPkgs :: Task ()
lockPkgs =
  task_
    ("lock-pkgs", "")
    [tsInstall]
    $ \Ctx {..} -> sh "yarn workspace lock-pkgs ts-node src/index.ts"

bundle :: Task ()
bundle =
  task_
    ("bundle", "")
    [ tsInstall,
      psBuild
    ]
    $ \Ctx {..} -> sh "yarn workspace bundle-nix ts-node src/index.ts"

materialize :: Task ()
materialize =
  task_
    ("materialize", "")
    [bundle]
    $ \_ -> pure ()

checkMaterialize :: Task ()
checkMaterialize =
  task_
    ("check-materialize", "")
    [materialize, checkStatus]
    $ \_ -> pure ()

checkStatus :: Task ()
checkStatus =
  task_
    ("check-status", "")
    []
    $ \Ctx {..} -> do
      let gitSt = inshell "git status -s" ""
      r <- strict gitSt
      stdout gitSt
      when
        (r /= "")
        (exit $ ExitFailure 1)

taskGraph :: Task ()
taskGraph =
  task_
    ("task-graph", "")
    []
    $ \Ctx {..} -> do
      getGraph allTasks
        & (select . textToLines . fromString)
        & inshell "dot -Tsvg"
        & output (decodeString "materialized/task-deps.svg")

generate :: Task ()
generate =
  task_
    ("generate", "")
    [materialize]
    $ \Ctx {..} -> do
      sh "rm -rf generated"
      sh "nix build .#docsJson -o generated/docs.json"
      sh "nix build .#tsTypes -o generated/types.ts"

tsDocsDevelop :: Task ()
tsDocsDevelop =
  task_
    ("ts-docs-develop", "")
    []
    $ \Ctx {..} -> do
      sh "yarn workspace docs develop"

ci :: Task ()
ci =
  task_
    ("ci", "")
    [ checkMaterialize,
      psBuild,
      dist
    ]
    $ \Ctx {..} -> pure ()

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
    mk hsWatch,
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
