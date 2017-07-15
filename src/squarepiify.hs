-- squarepiify.hs
--
-- First exercise from the Haskell Book. Abstracting similar expressions into
-- an appliable function.
--
-- Run from the command line with the following:
--   $ stack ghci
--   > :load squarepiify.hs
--   > squarepiify 5
--   78.53981633974483

-- squarepiify: square a number and then multiply by pi.
squarepiify x = pi * (x * x)

