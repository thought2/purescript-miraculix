module LocalDependency.Control.MonadPlus
  ( class MonadPlus
  , module LocalDependency.Control.Alt
  , module LocalDependency.Control.Alternative
  , module Control.Applicative
  , module Control.Apply
  , module Control.Bind
  , module Control.Monad
  , module LocalDependency.Control.MonadZero
  , module LocalDependency.Control.Plus
  , module Data.Functor
  ) where

import LocalDependency.Control.Alt (class Alt, alt, (<|>))
import LocalDependency.Control.Alternative (class Alternative, guard)
import Control.Applicative (class Applicative, pure, liftA1, unless, when)
import Control.Apply (class Apply, apply, (*>), (<*), (<*>))
import Control.Bind (class Bind, bind, ifM, join, (<=<), (=<<), (>=>), (>>=))
import Control.Monad (class Monad, ap, liftM1)
import LocalDependency.Control.MonadZero (class MonadZero)
import LocalDependency.Control.Plus (class Plus, empty)

import Data.Functor (class Functor, map, void, ($>), (<#>), (<$), (<$>))

-- | The `MonadPlus` type class has no members of its own; it just specifies
-- | that the type has both `Monad` and `Alternative` instances.
-- |
-- | Types which have `MonadPlus` instances should also satisfy the following
-- | law:
-- |
-- | - Distributivity: `(x <|> y) >>= f == (x >>= f) <|> (y >>= f)`
class (Monad m, Alternative m) <= MonadPlus m

instance monadPlusArray :: MonadPlus Array
