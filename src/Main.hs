module Main where

import Problem615

main :: IO ()
main = do
  n <- readLn
  print $ findPrimes' n n
