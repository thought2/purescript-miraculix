module Test.Miraculix.Nix.Internal
  ( assertEq
  , nixShow
  ) where

import Prelude
import Data.Foldable (intercalate)
import Data.Tuple.Nested ((/\))
import Foreign (Foreign)
import Foreign as F
import Foreign.Object (Object)
import Foreign.Object as O
import Foreign.Path (Path)
import Foreign.Path as P
import Partial.Unsafe (unsafePartial)
import Test.Miraculix as M
import Unsafe.Coerce (unsafeCoerce)

foreign import nixEq :: forall a. a -> a -> Boolean

newtype Val
  = Val Foreign

instance eqVal :: Eq Val where
  eq = nixEq

instance showVal :: Show Val where
  show (Val fo) = nixShow fo

assertEq :: Foreign -> Foreign -> M.Assertion
assertEq x y = M.assertEq (Val x) (Val y)

nixShow :: Foreign -> String
nixShow =
  caseForeign
    showAttrSet
    show
    P.toString
    show
    showFunction
    show
    showList
    showNull
    show
  where
  showAttrSet :: Object Foreign -> String
  showAttrSet o =
    "{ "
      <> (intercalate "" $ showAttr <$> O.toArrayWithKey (/\) o)
      <> "}"

  showAttr (k /\ v) = k <> " = " <> nixShow v <> "; "

  showList :: Array Foreign -> String
  showList xs = "[ " <> (intercalate "" $ showListItem <$> xs) <> "]"

  showListItem x = nixShow x <> " "

  showFunction _ = "<function>"

  showNull _ = "null"

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
