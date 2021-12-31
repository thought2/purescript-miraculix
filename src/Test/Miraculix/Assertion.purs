module Test.Miraculix.Assertion
  ( Assertion
  , assertEq
  , assertLt
  , assertGt
  , assert
  , isSuccess
  , (@?=)
  , message
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
-- | Asserts that the specified condition holds.
assert :: Boolean -> Array String -> Assertion
assert result message = Assertion { result, message }

-- | Asserts that the specified actual value is equal to the expected value
-- | (with the actual value on the left-hand side).
assertEq :: forall a. Show a => Eq a => a -> a -> Assertion
assertEq actual expected =
  assert (actual == expected)
    [ withBullet $ fontColor Yellow "actual:"
    , indent 1 $ show actual
    , withBullet $ fontColor Yellow "expected:"
    , indent 1 $ show expected
    ]

infixr 1 assertEq as @?=

-- | Asserts that the specified value is lower than another value
assertLt :: forall a. Show a => Ord a => a -> a -> Assertion
assertLt l r =
  assert (l < r)
    [ show l <> " is not lower than " <> show r ]

-- | Asserts that the specified value is greater than another value
assertGt :: forall a. Show a => Ord a => a -> a -> Assertion
assertGt l r =
  assert (l > r)
    [ show l <> " is not greater than " <> show r ]

--------------------------------------------------------------------------------
-- Destructors
--------------------------------------------------------------------------------
isSuccess :: Assertion -> Boolean
isSuccess (Assertion { result }) = result

message :: Assertion -> Array String
message (Assertion { message }) = message
