module Problem615 ( findPrimes'
                  ) where

import Data.Numbers.Primes

newtype ModInt = ModInt {unModInt :: Int} deriving (Eq, Show, Read)

instance Num ModInt where
  (ModInt a) + (ModInt b) = ModInt (a + b `mod` 123454321)
  (ModInt a) - (ModInt b) = ModInt (a - b `mod` 123454321)
  (ModInt a) * (ModInt b) = ModInt (a * b `mod` 123454321)
  fromInteger = ModInt . fromInteger

  abs _ = error "This should never have been in Num"
  signum _ = error "This should never have been in Num"

findPrimes :: Integer -- magic constant N, we will use 123454321
           -> Integer -- n
           -> Integer -- k
           -> Integer -- the k'th smallest number which is a product
                      -- of >= n primes
findPrimes nn n k = error "not implemented"

findPrimes' :: Integer -- n
            -> Integer -- k
            -> Integer -- the k'th smallest number which is a product
                       -- of >= n primes
findPrimes' = findPrimes 123454321
