-- where.hs
--
-- Run from the command line with the following:
--   $ stack ghci
--   > :load where.hs
--   > printIncrement 10
--   11

module Where where

printIncrement n = print plusOne
  where plusOne = n + 1
