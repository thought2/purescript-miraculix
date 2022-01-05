module DoctorNix where

import Prelude
import Data.Array (fold)
import Data.Tuple.Nested (type (/\))
import Foreign (Foreign)
import Foreign.Object (Object)
import Foreign.Path (Path)
import LocalDependency.Unsafe.Coerce (unsafeCoerce)
import Prim.RowList (class RowToList, RowList)
import Type.Proxy (Proxy(..))

data NixType
  = Attrs (Array (String /\ NixType))
  | Bool
  | Path
  | Float
  | Function NixType NixType
  | Int
  | List NixType
  | Null
  | String
  | Opaque String (Array String)
  | Any
  | TypeVar String
  | Attrs' NixType
  | Attrs''

class ToNixType a where
  toNixType :: a -> NixType

toNixType' :: forall a. ToNixType a => Proxy a -> NixType
toNixType' _ = toNixType ((unsafeCoerce unit) :: a)

class Foo (rl :: RowList Type) where
  foo :: Proxy rl -> NixType

instance record :: (RowToList r rl, Foo rl) => ToNixType (Record r) where
  toNixType _ = foo (Proxy :: Proxy rl)

instance boolean :: ToNixType Boolean where
  toNixType _ = Bool

instance path :: ToNixType Path where
  toNixType _ = Path

instance number :: ToNixType Number where
  toNixType _ = Float

instance function :: (ToNixType a, ToNixType b) => ToNixType (a -> b) where
  toNixType _ = Function (toNixType' (Proxy :: Proxy a)) (toNixType' (Proxy :: Proxy b))

instance int :: ToNixType Int where
  toNixType _ = Int

instance array :: ToNixType a => ToNixType (Array a) where
  toNixType _ = List (toNixType' (Proxy :: Proxy a))

instance unit :: ToNixType Unit where
  toNixType _ = Null

instance string :: ToNixType String where
  toNixType _ = String

instance foreign' :: ToNixType Foreign where
  toNixType _ = Any

instance attrs'' :: ToNixType (Object Foreign) where
  toNixType _ = Attrs''
else instance attrs' :: ToNixType a => ToNixType (Object a) where
  toNixType _ = Attrs' (toNixType' (Proxy :: Proxy a))

instance nixType :: ToNixType NixType where
  toNixType x = x

type NixDocs
  = { title :: String
    , types :: Array { name :: String, descr :: String, type_ :: NixType }
    , defs :: Array { name :: String, descr :: String, type_ :: NixType }
    }

render :: NixDocs -> String
render { title, types, defs } = fold [ "# " <> title, "" ]
