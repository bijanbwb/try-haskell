-- waxon.hs
--
-- Exercise from Haskell Book.
-- Run from the command line with the following:
--   $ stack ghci
--   > :load waxon.hs
--   > waxOn
--   1125
--   > waxOff waxOn
--   3375

waxOn = x * 5 where
    x = y ^ 2
    y = z + 8
    z = 7

triple x = x * 3

waxOff x = triple x
