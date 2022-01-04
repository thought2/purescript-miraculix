module Test.MiraculixLite
  ( runTests
  , module M
  ) where

import Prelude
import LocalDependency.Effect (Effect)
import Test.MiraculixLite.Assertion ((@?=), assertEq, assertLt, assertGt, assert) as M
import Test.MiraculixLite.FFI (StorePath) as M
import Test.MiraculixLite.FFI (StorePath, mkReport)
import Test.MiraculixLite.Summary (printSummary)
import Test.MiraculixLite.TestTree (TestTree, getSummary)
import Test.MiraculixLite.TestTree (TestTree, testCase, testGroup) as M

-- | Run all tests in the test tree
runTests :: TestTree -> Effect StorePath
runTests tt = do
  summary <- getSummary tt
  pure $ mkReport $ printSummary summary
