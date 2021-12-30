module Miraculix.Summary
  ( Summary, printSummary
  ) where

import Prelude
import Data.Monoid.Additive (Additive(..))
import Data.Newtype (un)
import Miraculix.Typo (fontColor, Color(..))

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
printSummary :: Summary -> Array String
printSummary summary =
  [ "Ran " <> show count <> " tests."
  , "Successfull: " <> (fontColor Green $ show successes)
  , "Failed: " <> (fontColor Red $ show failures)
  ]
  where
  count = un Additive summary.count

  failures = un Additive summary.failures

  successes = count - failures
