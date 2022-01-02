module Test.Miraculix.FFI
  ( abort
  , seq
  , deepSeq
  , mkReport
  , trace
  , foldl'
  , concatStringsSep
  , substring
  , bullet
  , StorePath
  ) where

import Prelude
import Effect (Effect)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------
-- | Type that describes a path inside the Nix store.
foreign import data StorePath :: Type

--------------------------------------------------------------------------------
-- Values
--------------------------------------------------------------------------------
foreign import abort :: String -> Effect Unit

foreign import seq :: forall a b. a -> b -> b

foreign import deepSeq :: forall a b. a -> b -> b

foreign import mkReport :: String -> StorePath

foreign import trace :: String -> Effect Unit

foreign import foldl' :: forall a b. (b -> a -> b) -> b -> Array a -> b

foreign import concatStringsSep :: String -> Array String -> String

foreign import substring :: Int -> Int -> String -> String

foreign import bullet :: String
