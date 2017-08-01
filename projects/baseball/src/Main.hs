module Main where

import Baseball

-- MAIN

main :: IO ()
main = do
  summed <- getAtBatsSum "batting.csv"
  putStrLn $ "Total at bats was: " ++ (show summed)

