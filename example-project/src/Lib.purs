module Lib (greeting) where

import Prelude

greeting :: String -> String
greeting str = "Hello, " <> str <> "!"
