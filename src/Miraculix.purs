module Miraculix
  ( runTests
  , module M
  ) where

import Prelude
import Miraculix.FFI (mkReport, StorePath)
import Miraculix.Summary (printSummary)
import Miraculix.TestTree (TestTree, getSummary)
-- Re-Export
import Miraculix.FFI (StorePath) as M
import Miraculix.TestTree (TestTree, testCase, testGroup) as M
import Miraculix.Assertion ((@?=)) as M

-- | Run all tests in the test tree
runTests :: TestTree -> StorePath
runTests tt = mkReport $ printSummary $ getSummary tt
