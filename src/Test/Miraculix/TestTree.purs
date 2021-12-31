module Test.Miraculix.TestTree
  ( testCase
  , testGroup
  , TestTree
  , getSummary
  ) where

import Prelude
import Data.Foldable (fold)
import Test.Miraculix.Assertion (Assertion)
import Test.Miraculix.Assertion as A
import Test.Miraculix.FFI (foldl', trace, deepSeq, abort)
import Test.Miraculix.Summary (Summary, printSummaryFooter)
import Test.Miraculix.Typo (fontColor, indent, withBullet, Color(..))

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
-- | The main data structure defining a test suite.
-- | It consists of individual test cases and properties, organized in named
-- | groups which form a tree-like hierarchy. 
data TestTree
  = TestCase { name :: String, assertion :: Assertion }
  | TestGroup { name :: String, tests :: Array TestTree }

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
getSummary' :: Int -> TestTree -> Summary
getSummary' depth (TestCase { name, assertion }) = traceLines depth log $ report
  where
  isSuccess = A.isSuccess assertion

  log = [ indent depth (withBullet $ name <> ": " <> result) ] <> logAssertion

  logAssertion =
    if isSuccess then
      []
    else
      (indent (depth + 1) <$> A.message assertion)

  result
    | isSuccess = fontColor Green "ok"
    | otherwise = fontColor Red "failure"

  report
    | isSuccess = { failures: pure 0, count: pure 1, log }
    | otherwise = { failures: pure 1, count: pure 1, log }

getSummary' depth (TestGroup { name, tests }) =
  traceLines depth log
    $ here
    <> children
  where
  log = [ indent depth $ withBullet name ]

  here = { failures: pure 0, count: pure 0, log }

  children = fold $ getSummary' (depth + 1) <$> tests

getSummary :: TestTree -> Summary
getSummary tt =
  if isSuccess then
    summary'
  else
    deepSeq summary' (abort "Test suite failed")
  where
  footer = traceLines 0 ([ "" ] <> printSummaryFooter summary <> [ "" ]) $ printSummaryFooter summary

  summary = traceLines 0 [ "" ] $ getSummary' 0 tt

  isSuccess = summary.failures == pure 0

  summary' = summary { log = summary.log <> [ "" ] <> footer }

--------------------------------------------------------------------------------
-- Utils
--------------------------------------------------------------------------------
traceLines :: forall a. Int -> Array String -> a -> a
traceLines depth lines val =
  foldl' (\m x -> trace x m) val
    $ indent depth
    <$> lines
