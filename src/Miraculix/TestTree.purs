module Miraculix.TestTree
  ( testCase
  , testGroup
  , TestTree
  ) where

import Prelude
import Data.Foldable (fold)
import Miraculix.Assertion (Assertion)
import Miraculix.Assertion as A
import Miraculix.Summary (Summary)
import Miraculix.Typo (fontColor, indent, withBullet, Color(..))
import Miraculix.FFI (foldl', trace)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
data TestTree
  = TestCase { name :: String, assertion :: Assertion }
  | TestGroup { name :: String, tests :: Array TestTree }

--------------------------------------------------------------------------------
-- Constructors
--------------------------------------------------------------------------------
testCase :: String -> Assertion -> TestTree
testCase name assertion = TestCase { name, assertion }

testGroup :: String -> Array TestTree -> TestTree
testGroup name tests = TestGroup { name, tests }

--------------------------------------------------------------------------------
-- Destructors
--------------------------------------------------------------------------------
getSummary :: Int -> TestTree -> Summary
getSummary depth (TestCase { name, assertion }) = traceLines depth log $ report
  where
  isSuccess = A.isSuccess assertion

  log = [ indent depth (withBullet $ name <> ": " <> result) ]

  result
    | isSuccess = fontColor Green "ok"
    | otherwise = fontColor Red "failure"

  report
    | isSuccess = { failures: pure 0, count: pure 1, log }
    | otherwise = { failures: pure 1, count: pure 1, log }

getSummary depth (TestGroup { name, tests }) =
  traceLines depth log
    $ here
    <> children
  where
  log = [ indent depth $ withBullet name ]

  here = { failures: pure 0, count: pure 0, log }

  children = fold $ getSummary (depth + 1) <$> tests

--------------------------------------------------------------------------------
-- Utils
--------------------------------------------------------------------------------
traceLines :: forall a. Int -> Array String -> a -> a
traceLines depth lines val =
  foldl' (\m x -> trace x m) val
    $ indent depth
    <$> lines
