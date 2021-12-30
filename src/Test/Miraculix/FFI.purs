module Test.Miraculix.FFI
  ( abort
  , seq
  , deepSeq
  , mkReport
  , trace
  , foldl'
  , concatStringsSep
  , substring
  , StorePath
  ) where

import Prelude
import Data.Monoid.Additive (Additive(..))
import Data.Foldable (fold)
import Data.Newtype (un)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
foreign import data StorePath :: Type

--------------------------------------------------------------------------------
-- Values
--------------------------------------------------------------------------------
foreign import abort :: forall a. String -> a

foreign import seq :: forall a b. a -> b -> b

foreign import deepSeq :: forall a b. a -> b -> b

foreign import mkReport :: String -> StorePath

foreign import trace :: forall a b. a -> b -> b

foreign import foldl' :: forall a b. (b -> a -> b) -> b -> Array a -> b

foreign import concatStringsSep :: String -> Array String -> String

foreign import substring :: Int -> Int -> String -> String
