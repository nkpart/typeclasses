{-# LANGUAGE FlexibleInstances, UndecidableInstances #-}
module Typeclasses where

import Data.Maybe

-- The classes!
class Zero a where
  zero :: a

class Semigroup a where
  append :: a -> a -> a

class Monoid a where
  mappend' :: a -> a -> a
  mzero' :: a



-- Some instances
instance Zero [a] where
    zero = []

instance Semigroup [a] where
    append = (++)
    
instance (Zero m, Semigroup m) => Monoid m where
  mappend' = append
  mzero' = zero

-- Some useful functions base on these typeclasses
o :: Zero a => Maybe a -> a
o = fromMaybe zero

msum' :: Monoid a => [a] -> a
msum' = foldl mappend' mzero'

