#!/usr/bin/env stack
{- stack
  --no-nix-pure
  script
  --resolver lts-18.21
  --package turtle
  --package optparse-applicative
  --package process
  --package text
  --package chalk
  --package dot
-}

{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}

import OptTask
import Options.Applicative
import qualified Turtle as T

--------------------------------------------------------------------------------
-- Tasks
--------------------------------------------------------------------------------

psBuild :: Task Bool
psBuild =
  task
    ("ps-build", "Build the PureScript project")
    [dep psClean ()]
    (switch $ long "strict")
    ( \_ ctx -> do
        echo ctx "Hello, build!"
        sh ctx "spago build --purs-args --censor-lib --strict --config lib.dhall"
    )

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
    (\_ ctx -> sh ctx "yarn install")

nixDocs :: Task ()
nixDocs =
  task
    ("nix-docs", "")
    [dep tsInstall ()]
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

test :: Task ()
test =
  task
    ("test", "")
    []
    (pure ())
    ( \_ ctx -> do
        sh ctx "spago build --config tests.dhall"
        sh ctx "nix-build -E '(import ./output/Test.Main/default.nix).main null"
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
    [dep tsInstall ()]
    (pure ())
    (\_ ctx -> sh ctx "yarn workspace bundle-nix ts-node src/index.ts")

materialize :: Task ()
materialize =
  task
    ("materialize", "")
    [dep bundle ()]
    (pure ())
    (\_ _ -> pure ())

checkStatus :: Task ()
checkStatus =
  task
    ("check-status", "")
    []
    (pure ())
    (\_ ctx -> sh ctx "bash scripts/check-git-status.sh")

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
    mk test,
    mk lockPkgs,
    mk bundle,
    mk materialize,
    mk checkStatus,
    mk generate
  ]

main = do
  runTasks allTasks
