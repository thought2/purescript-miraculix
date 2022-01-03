module Test.Miraculix.Classless
  ( assertEq
  , module Exp
  , Val
  ) where

import Prelude
import Test.Miraculix as M
import Test.Miraculix (testCase, testGroup, runTests) as Exp

foreign import nixEq :: forall a. a -> a -> Boolean

foreign import nixShow :: forall a. a -> String

newtype Val a
  = Val a

instance eqVal :: Eq (Val a) where
  eq = nixEq

instance showVal :: Show (Val a) where
  show = nixShow

assertEq :: forall a. Val a -> Val a -> M.Assertion
assertEq = M.assertEq

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
