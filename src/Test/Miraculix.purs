module Test.Miraculix
  ( runTests
  , module M
  ) where

import Prelude
import Test.Miraculix.FFI (mkReport, StorePath)
import Test.Miraculix.Summary (printSummary)
import Test.Miraculix.TestTree (TestTree, getSummary)
-- Re-Export
import Test.Miraculix.FFI (StorePath) as M
import Test.Miraculix.TestTree (TestTree, testCase, testGroup) as M
import Test.Miraculix.Assertion ((@?=)) as M

-- | Run all tests in the test tree
runTests :: TestTree -> StorePath
runTests tt = mkReport $ printSummary $ getSummary tt
