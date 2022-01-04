module Test.Miraculix.Classless
  ( assertEq
  , module Exp
  , Val
  ) where

import Prelude
import Data.Foldable (intercalate)
import Foreign (Foreign)
import Foreign as F
import Foreign.Object (Object)
import Foreign.Path (Path)
import Partial.Unsafe (unsafePartial)
import Test.Miraculix (testCase, testGroup, runTests) as Exp
import Test.Miraculix as M
import Unsafe.Coerce (unsafeCoerce)

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
nixShow =
  caseForeign
    (\_ -> "")
    show
    (\_ -> "")
    show
    (\_ -> "<function>")
    show
    (\xs -> "[ " <> (intercalate " " $ nixShow <$> xs) <> " ]")
    (\_ -> "null")
    show

caseForeign ::
  forall a.
  (Object Foreign -> a) ->
  (Boolean -> a) ->
  (Path -> a) ->
  (Number -> a) ->
  (Foreign -> a) ->
  (Int -> a) ->
  (Array Foreign -> a) ->
  (Unit -> a) ->
  (String -> a) ->
  Foreign ->
  a
caseForeign onAttrs onBool onPath onFloat onFunction onInt onList onNull onString v =
  unsafePartial
    go
  where
  go :: Partial => a
  go
    | F.isAttrs v = onAttrs $ u v
    | F.isBool v = onBool $ u v
    | F.isPath v = onPath $ u v
    | F.isFloat v = onFloat $ u v
    | F.isFunction v = onFunction $ u v
    | F.isInt v = onInt $ u v
    | F.isList v = onList $ u v
    | F.isNull v = onNull $ u v
    | F.isString v = onString $ u v

  u = unsafeCoerce
