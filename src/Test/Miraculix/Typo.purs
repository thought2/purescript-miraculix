module Test.Miraculix.Typo
  ( withBullet
  , indent
  , fontColor
  , Color(..)
  ) where

import Prelude
import Test.Miraculix.FFI (substring)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
data Color
  = Red
  | Green
  | Yellow

--------------------------------------------------------------------------------
-- Destructors
--------------------------------------------------------------------------------
toColorCode :: Color -> String
toColorCode c = case c of
  Red -> "\x001b[31m"
  Green -> "\x001b[32m"
  Yellow -> "\x001b[33m"

fontColor :: Color -> String -> String
fontColor color txt = toColorCode color <> txt <> resetColor

--------------------------------------------------------------------------------
-- Utils
--------------------------------------------------------------------------------
bullet :: String
bullet = "\x2022"

resetColor :: String
resetColor = "\x001b[0m"

withBullet :: String -> String
withBullet txt = bullet <> " " <> txt

indent :: Int -> String -> String
indent n line = spaces <> line
  where
  spaces = substring 0 (n * 2) maxSpaces

  maxSpaces = "                    "
