module Test.Miraculix.Assertion
  ( Assertion
  , assertEq
  , assertLt
  , assertGt
  , assert
  , isSuccess
  , (@?=)
  ) where

import Prelude
import Test.Miraculix.Typo (withBullet, fontColor, Color(..), indent)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
newtype Assertion
  = Assertion { result :: Boolean, message :: Array String }

--------------------------------------------------------------------------------
-- Constructors
--------------------------------------------------------------------------------
assert :: Boolean -> Array String -> Assertion
assert result message = Assertion { result, message }

assertEq :: forall a. Show a => Eq a => a -> a -> Assertion
assertEq actual expected =
  assert (actual == expected)
    [ withBullet $ fontColor Yellow "actual:"
    , indent 1 $ show actual
    , withBullet $ fontColor Yellow "expected:"
    , indent 1 $ show expected
    ]

infixr 1 assertEq as @?=

assertLt :: forall a. Show a => Ord a => a -> a -> Assertion
assertLt l r =
  assert (l < r)
    [ show l <> " is not lower than " <> show r ]

assertGt :: forall a. Show a => Ord a => a -> a -> Assertion
assertGt l r =
  assert (l > r)
    [ show l <> " is not greater than " <> show r ]

--------------------------------------------------------------------------------
-- Destructors
--------------------------------------------------------------------------------
isSuccess :: Assertion -> Boolean
isSuccess (Assertion { result }) = result
