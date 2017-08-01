module Main where

import qualified Data.ByteString.Lazy as BL
import qualified Data.Vector as V
import Data.Csv

-- TYPES

type BaseballStats = (BL.ByteString, Int, BL.Bytestring, Int)

-- MAIN

main :: IO ()
main = do
  csvData <- BL.readFile "batting.csv"
  let v = decode NoHeader csvData :: Either String (V.Vector BaseballStats)
  let summed = fmap (V.foldr summer 0) v
  putStrLn $ "Total at bats was: " ++ (show summed)
  where summer (name, year, team, atBats) n = n + atBats

