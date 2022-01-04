module Test.Main where

import Prelude
import Test.MiraculixLite (StorePath, TestTree, runTests, testCase, testGroup, (@?=))
import Data.Array (sort)
import Test.MiraculixLite.FFI (trace, seq, deepSeq)
import Tests.Test.Miraculix.Classless as Tests.Test.Miraculix.Classless

main = runTests tests

tests :: TestTree
tests =
  testGroup "miraculix"
    [ Tests.Test.Miraculix.Classless.tests
    ]
