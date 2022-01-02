module LocalDependency.Data.FunctorWithIndex
  ( class FunctorWithIndex, mapWithIndex, mapDefault
  ) where

import Prelude

import LocalDependency.Data.Bifunctor (bimap)
import LocalDependency.Data.Const (Const(..))
import LocalDependency.Data.Either (Either(..))
import LocalDependency.Data.Functor.App (App(..))
import LocalDependency.Data.Functor.Compose (Compose(..))
import LocalDependency.Data.Functor.Coproduct (Coproduct(..))
import LocalDependency.Data.Functor.Product (Product(..))
import LocalDependency.Data.Identity (Identity(..))
import LocalDependency.Data.Maybe (Maybe)
import LocalDependency.Data.Maybe.First (First)
import LocalDependency.Data.Maybe.Last (Last)
import Data.Monoid.Additive (Additive)
import Data.Monoid.Conj (Conj)
import Data.Monoid.Disj (Disj)
import Data.Monoid.Dual (Dual)
import Data.Monoid.Multiplicative (Multiplicative)
import LocalDependency.Data.Tuple (Tuple, curry)

-- | A `Functor` with an additional index.
-- | Instances must satisfy a modified form of the `Functor` laws
-- | ```purescript
-- | mapWithIndex (\_ a -> a) = identity
-- | mapWithIndex f . mapWithIndex g = mapWithIndex (\i -> f i <<< g i)
-- | ```
-- | and be compatible with the `Functor` instance
-- | ```purescript
-- | map f = mapWithIndex (const f)
-- | ```
class Functor f <= FunctorWithIndex i f | f -> i where
  mapWithIndex :: forall a b. (i -> a -> b) -> f a -> f b

foreign import mapWithIndexArray :: forall i a b. (i -> a -> b) -> Array a -> Array b

instance functorWithIndexArray :: FunctorWithIndex Int Array where
  mapWithIndex = mapWithIndexArray

instance functorWithIndexMaybe :: FunctorWithIndex Unit Maybe where
  mapWithIndex f = map $ f unit

instance functorWithIndexFirst :: FunctorWithIndex Unit First where
  mapWithIndex f = map $ f unit

instance functorWithIndexLast :: FunctorWithIndex Unit Last where
  mapWithIndex f = map $ f unit

instance functorWithIndexAdditive :: FunctorWithIndex Unit Additive where
  mapWithIndex f = map $ f unit

instance functorWithIndexDual :: FunctorWithIndex Unit Dual where
  mapWithIndex f = map $ f unit

instance functorWithIndexConj :: FunctorWithIndex Unit Conj where
  mapWithIndex f = map $ f unit

instance functorWithIndexDisj :: FunctorWithIndex Unit Disj where
  mapWithIndex f = map $ f unit

instance functorWithIndexMultiplicative :: FunctorWithIndex Unit Multiplicative where
  mapWithIndex f = map $ f unit

instance functorWithIndexEither :: FunctorWithIndex Unit (Either a) where
  mapWithIndex f = map $ f unit

instance functorWithIndexTuple :: FunctorWithIndex Unit (Tuple a) where
  mapWithIndex f = map $ f unit

instance functorWithIndexIdentity :: FunctorWithIndex Unit Identity where
  mapWithIndex f (Identity a) = Identity (f unit a)

instance functorWithIndexConst :: FunctorWithIndex Void (Const a) where
  mapWithIndex _ (Const x) = Const x

instance functorWithIndexProduct :: (FunctorWithIndex a f, FunctorWithIndex b g) => FunctorWithIndex (Either a b) (Product f g) where
  mapWithIndex f (Product fga) = Product (bimap (mapWithIndex (f <<< Left)) (mapWithIndex (f <<< Right)) fga)

instance functorWithIndexCoproduct :: (FunctorWithIndex a f, FunctorWithIndex b g) => FunctorWithIndex (Either a b) (Coproduct f g) where
  mapWithIndex f (Coproduct e) = Coproduct (bimap (mapWithIndex (f <<< Left)) (mapWithIndex (f <<< Right)) e)

instance functorWithIndexCompose :: (FunctorWithIndex a f, FunctorWithIndex b g) => FunctorWithIndex (Tuple a b) (Compose f g) where
  mapWithIndex f (Compose fga) = Compose $ mapWithIndex (mapWithIndex <<< curry f) fga

instance functorWithIndexApp :: FunctorWithIndex a f => FunctorWithIndex a (App f) where
  mapWithIndex f (App x) = App $ mapWithIndex f x

-- | A default implementation of Functor's `map` in terms of `mapWithIndex`
mapDefault :: forall i f a b. FunctorWithIndex i f => (a -> b) -> f a -> f b
mapDefault f = mapWithIndex (const f)
