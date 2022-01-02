module Test.Miraculix.TestTree
  ( testCase
  , testGroup
  , TestTree
  , getSummary
  ) where

import Prelude
import LocalDependency.Data.Foldable (fold, traverse_)
import LocalDependency.Data.Traversable (traverse)
import LocalDependency.Effect (Effect)
import Test.Miraculix.Assertion (Assertion)
import Test.Miraculix.Assertion as A
import Test.Miraculix.FFI (abort, trace)
import Test.Miraculix.Summary (Summary, printSummaryFooter)
import Test.Miraculix.Typo (fontColor, indent, withBullet, Color(..))

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
-- | The main data structure defining a test suite.
-- | It consists of individual test cases and properties, organized in named
-- | groups which form a tree-like hierarchy. 
data TestTree
  = TestCase TestCase'
  | TestGroup TestGroup'

type TestCase'
  = { name :: String, assertion :: Assertion }

type TestGroup'
  = { name :: String, tests :: Array TestTree }

--------------------------------------------------------------------------------
-- Constructors
--------------------------------------------------------------------------------
-- | Turn an Assertion into a test case
testCase :: String -> Assertion -> TestTree
testCase name assertion = TestCase { name, assertion }

-- | Create a named group of test cases or other groups
testGroup :: String -> Array TestTree -> TestTree
testGroup name tests = TestGroup { name, tests }

--------------------------------------------------------------------------------
-- Destructors
--------------------------------------------------------------------------------
mkTestCaseLog :: TestCase' -> Array String
mkTestCaseLog { name, assertion }
  | A.isSuccess assertion =
    [ withBullet
        (name <> ": " <> fontColor Green "ok")
    ]

mkTestCaseLog { name, assertion }
  | otherwise =
    [ withBullet (name <> ": " <> fontColor Red "failed") ]
      <> (indent 1 <$> A.message assertion)

mkTestGroupLog :: TestGroup' -> Array String
mkTestGroupLog { name } = [ withBullet name ]

getSummary' :: Int -> TestTree -> Effect Summary
getSummary' depth (TestCase tc) = do
  traverse_ trace log
  pure $ report
  where
  isSuccess = A.isSuccess tc.assertion

  log = indent depth <$> mkTestCaseLog tc

  report
    | isSuccess = { failures: pure 0, count: pure 1, log }
    | otherwise = { failures: pure 1, count: pure 1, log }

getSummary' depth (TestGroup testGroup') = do
  traverse_ trace log
  children <- fold <$> traverse (getSummary' (depth + 1)) testGroup'.tests
  pure (here <> children)
  where
  log = indent depth <$> mkTestGroupLog testGroup'

  here = { failures: pure 0, count: pure 0, log }

getSummary :: TestTree -> Effect Summary
getSummary tt = do
  summary <- getSummary' 0 tt
  let
    footer = [ "" ] <> printSummaryFooter summary
  traverse_ trace footer
  when (summary.failures /= pure 0) $ abort "Test suite failed"
  pure $ summary { log = summary.log <> footer }
