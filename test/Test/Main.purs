module Test.Main where

import Prelude
import Test.MiraculixLite (StorePath, TestTree, runTests, testCase, testGroup, (@?=))
import Data.Array (sort)
import Test.MiraculixLite.FFI (trace, seq, deepSeq)
import Tests.Test.Miraculix.Nix as Tests.Test.Miraculix.Nix

main = runTests tests

tests :: TestTree
tests =
  testGroup "miraculix"
    [ Tests.Test.Miraculix.Nix.tests
    ]
