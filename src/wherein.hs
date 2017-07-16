-- wherein.hs
--
-- Run from the command line with the following:
--   $ stack ghci
--   > :load wherein.hs
--   > printIncrementWhere 10
--   11
--   > printIncrementLet 10
--   11

module Where where

printIncrementWhere n = print plusOne
  where plusOne = n + 1

printIncrementLet n = let plusOne = n + 1
                      in print plusOne
