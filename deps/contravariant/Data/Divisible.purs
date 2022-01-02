module LocalDependency.Data.Divisible where

import Prelude

import LocalDependency.Data.Comparison (Comparison(..))
import LocalDependency.Data.Divide (class Divide)
import LocalDependency.Data.Equivalence (Equivalence(..))
import LocalDependency.Data.Op (Op(..))
import LocalDependency.Data.Predicate (Predicate(..))

-- | `Divisible` is the contravariant analogue of `Applicative`.
class Divide f <= Divisible f where
  conquer :: forall a. f a

instance divisibleComparison :: Divisible Comparison where
  conquer = Comparison $ \_ _ -> EQ

instance divisibleEquivalence :: Divisible Equivalence where
  conquer = Equivalence $ \_ _ -> true

instance divisiblePredicate :: Divisible Predicate where
  conquer = Predicate (const true)

instance divisibleOp :: (Monoid r) => Divisible (Op r) where
  conquer = Op $ const mempty
