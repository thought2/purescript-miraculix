module Test.Miraculix
  ( runTests
  , module M
  ) where

import Prelude
import Effect (Effect)
import Test.Miraculix.Assertion
  ( (@?=)
  , assertEq
  , assertLt
  , assertGt
  , assert
  , Assertion
  )
  as M
import Test.Miraculix.FFI (StorePath) as M
import Test.Miraculix.FFI (StorePath, mkReport)
import Test.Miraculix.Summary (printSummary)
import Test.Miraculix.TestTree (TestTree, getSummary)
import Test.Miraculix.TestTree (TestTree, testCase, testGroup) as M

-- | Run all tests in the test tree
runTests :: TestTree -> Effect StorePath
runTests tt = do
  summary <- getSummary tt
  pure $ mkReport $ printSummary summary
