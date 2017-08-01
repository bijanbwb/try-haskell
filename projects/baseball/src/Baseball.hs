-- src/Baseball.hs

module Baseball where

import qualified Data.ByteString.Lazy as BL
import qualified Data.Foldable as F
import Data.Csv.Streaming

-- TYPES

type BaseballStats = (BL.ByteString, Int, BL.ByteString, Int)

-- FUNCTIONS

baseballStats :: BL.ByteString -> Records BaseballStats
baseballStats = decode NoHeader

fourth :: (a, b, c, d) -> d
fourth (_, _, _, d) = d

summer :: (a, b, c, Int) -> Int -> Int
summer = (+) . fourth

getAtBatsSum :: FilePath -> IO Int
getAtBatsSum battingCsv = do
  csvData <- BL.readFile battingCsv
  return $ F.foldr summer 0 (baseballStats csvData)

