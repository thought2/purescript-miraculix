module Test.Miraculix.Summary
  ( Summary
  , printSummaryFooter
  , printSummary
  ) where

import Prelude
import Data.Foldable (fold)
import Data.Monoid.Additive (Additive(..))
import Data.Newtype (un)
import Test.Miraculix.Typo (fontColor, Color(..))

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
type Summary
  = { failures :: Additive Int
    , count :: Additive Int
    , log :: Array String
    }

--------------------------------------------------------------------------------
-- Destructors
--------------------------------------------------------------------------------
printSummaryFooter :: Summary -> Array String
printSummaryFooter summary =
  [ fontColor color
      $ show failures
      <> " out of "
      <> show count
      <> " tests failed"
  ]
  where
  color = if failures == 0 then Green else Red

  count = un Additive summary.count

  failures = un Additive summary.failures

printSummary :: Summary -> String
printSummary summary = fold $ (_ <> "\n") <$> summary.log
