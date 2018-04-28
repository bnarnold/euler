import Data.Numbers.Primes
import Data.Ratio




--findI computes, for given k, the smallest i such that (k+i) `choose` k is >= 1000000
--use that k+i `choose` k = (k+(i-1)) `choose` k times (k+i/k)
findI :: Int -> Int
findI k = findI' (fromInteger 1) 0 where
           findI' c i = if c >= fromInteger 1000000 then i
                         else findI' (c*((k+i+1) % (i+1))) (i+1)



boundK :: Int -> Float
boundK k = let i = findI k 
               primes' = drop (1000000-k) primes
               pLow    = fromInteger . product . take k $ primes'
               pHigh   = fromInteger . product . take k . drop i $ primes'
            in pHigh / pLow