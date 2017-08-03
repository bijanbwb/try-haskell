{-# LANGUAGE DeriveGeneric #-}

module Main where

import Servant
import GHC.Generics

-- TYPES

data Artist = Artist
  { artistId :: Int
  , name :: String
  } deriving (Eq, Show, Generic)

-- MAIN

main :: IO ()
main = do
  putStrLn "hello world"
