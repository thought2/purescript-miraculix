module LocalDependency.Data.Profunctor.Costrong where

import LocalDependency.Data.Tuple (Tuple)
import LocalDependency.Data.Profunctor (class Profunctor)

-- | The `Costrong` class provides the dual operations of the `Strong` class.
class Profunctor p <= Costrong p where
  unfirst :: forall a b c. p (Tuple a c) (Tuple b c) -> p a b
  unsecond :: forall a b c. p (Tuple a b) (Tuple a c) -> p b c
