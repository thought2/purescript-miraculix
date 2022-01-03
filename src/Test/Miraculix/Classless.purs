module Test.Miraculix.Classless
  ( assertEq
  , module Exp
  , Val
  ) where

import Prelude
import Test.Miraculix as M
import Test.Miraculix (testCase, testGroup, runTests) as Exp
import Foreign (Foreign)

foreign import nixEq :: forall a. a -> a -> Boolean

newtype Val
  = Val Foreign

instance eqVal :: Eq Val where
  eq = nixEq

instance showVal :: Show Val where
  show (Val fo) = nixShow fo

assertEq :: Val -> Val -> M.Assertion
assertEq = M.assertEq

nixShow :: Foreign -> String
nixShow _ = ""

-- toStr :: Foreign -> String
-- toStr =
--   caseForeign
--     { onAttrs: \_ -> ""
--     , onBool: show
--     , onPath: P.toString
--     , onFloat: show
--     , onFunction: "<function>"
--     , onInt: show
--     , onList: \_ -> ""
--     , onNull: "null"
--     , onString: \s -> s
--     }
