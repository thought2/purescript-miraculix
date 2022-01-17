module TS where

import Prelude
import Data.Array (fold, intercalate)
import Data.Generic.Rep (class Generic, Argument(..), Constructor(..), NoArguments(..), NoConstructors, Product, Sum, from, repOf)
import Data.Symbol (class IsSymbol, reflectSymbol, reifySymbol)
import Data.Tuple (Tuple)
import Data.Tuple.Nested ((/\), type (/\))
import Foreign.Object (Object)
import Prim.RowList (class RowToList, Nil, RowList, Cons)
import Type.Proxy (Proxy(..))

--------------------------------------------------------------------------------
-- data TsType
--------------------------------------------------------------------------------
data TsType
  = Boolean
  | Number
  | String
  | Array TsType
  | Tuple (Array TsType)
  | Unknown
  | Any
  | Void
  | Null
  | Undefined
  | Never
  | Object TsType
  | Record (Array (String /\ TsType))
  | Function (Array TsType)
  | Id String

--------------------------------------------------------------------------------
-- data TsTypeDecl
--------------------------------------------------------------------------------
data TsTypeDecl
  = Type String TsType Boolean

--------------------------------------------------------------------------------
-- data TsTypeDecl
--------------------------------------------------------------------------------
newtype TsDoc
  = TsDoc (Array TsTypeDecl)

--------------------------------------------------------------------------------
-- class ToTsType
--------------------------------------------------------------------------------
class ToTsType a where
  toTsType :: Proxy a -> TsType

instance boolean :: ToTsType Boolean where
  toTsType _ = Boolean

instance number :: ToTsType Number where
  toTsType _ = Number

instance int :: ToTsType Int where
  toTsType _ = Number

instance string :: ToTsType String where
  toTsType _ = String

instance unit :: ToTsType Unit where
  toTsType _ = Null

instance object :: ToTsType a => ToTsType (Object a) where
  toTsType _ = Object $ toTsType (Proxy :: _ a)

instance array :: ToTsType a => ToTsType (Array a) where
  toTsType _ = Array $ toTsType (Proxy :: _ a)

instance record :: (RowToList r rl, ToTsTypeRL rl) => ToTsType (Record r) where
  toTsType _ = Record $ toTsTypeRl (Proxy :: _ rl)

instance tuple :: (ToTsType a, ToTsType b) => ToTsType (Tuple a b) where
  toTsType x = genericToTsType x

--------------------------------------------------------------------------------
-- class Foo
--------------------------------------------------------------------------------
class Foo a where
  bar :: Proxy a -> TsType

-- instance x :: (ToTsType a, ToTsType b) => Foo (Sum a b) where
--   bar _ = Void
instance noC :: Foo NoConstructors where
  bar _ = Void

instance sum :: (Foo l, Foo r) => Foo (Sum l r) where
  bar _ = Void

instance noConstr :: (IsSymbol s, Foo a) => Foo (Constructor s a) where
  bar _ = Void

instance noArgs :: Foo NoArguments where
  bar _ = Void

instance prod :: (Foo l, Foo r) => Foo (Product l r) where
  bar _ = Void

instance arg :: ToTsType a => Foo (Argument a) where
  bar _ = Void

genericToTsType :: forall a rep. Generic a rep => Foo rep => Proxy a -> TsType
genericToTsType x = bar (Proxy :: _ rep)

--------------------------------------------------------------------------------
-- class ToTsTypeRL
--------------------------------------------------------------------------------
class ToTsTypeRL (rl :: RowList Type) where
  toTsTypeRl :: Proxy rl -> Array (String /\ TsType)

instance toTsTypeRLNil :: ToTsTypeRL Nil where
  toTsTypeRl _ = []

instance toTsTypeRLCons ::
  (ToTsTypeRL rl, ToTsType t, IsSymbol s) =>
  ToTsTypeRL (Cons s t rl) where
  toTsTypeRl _ =
    [ (reflectSymbol (Proxy :: _ s) /\ toTsType (Proxy :: _ t)) ]
      <> toTsTypeRl (Proxy :: _ rl)

--------------------------------------------------------------------------------
-- class Render
--------------------------------------------------------------------------------
class Render a where
  render :: a -> String

instance renderTsDoc :: Render TsDoc where
  render = case _ of
    TsDoc ds -> intercalate "\n" $ render <$> ds

instance renderTsTypeDecl :: Render TsTypeDecl where
  render = case _ of
    Type name t exp ->
      (if exp then "export " else "")
        <> "type "
        <> name
        <> " = "
        <> render t

instance renderTsType :: Render TsType where
  render = case _ of
    Boolean -> "boolean"
    Number -> "number"
    String -> "string"
    Array t -> "Array<" <> render t <> ">"
    Tuple ts -> "[" <> (intercalate "," $ render <$> ts) <> "]"
    Unknown -> "unknown"
    Any -> "any"
    Void -> "void"
    Null -> "null"
    Undefined -> "undefined"
    Never -> "never"
    Object t -> "Record<string, " <> render t <> ">"
    Record xs -> "{" <> (fold $ renderKeyVal <$> xs) <> "}"
    Function _ -> "<todo>"
    Id id -> id
    where
    renderKeyVal (k /\ v) = k <> ":" <> render v <> ";"
