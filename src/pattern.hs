-- pattern.hs
--
-- Pattern matching examples.
--
-- Run from the command line with the following:
--   $ stack ghci
--   > :load pattern.hs
--   > h
--   [1]
--   > t
--   [2,3,4,5]
--   > double []
--   []
--   > double [1, 2, 3]
--   [2,4,6]

list = [1, 2, 3, 4, 5]
(h : t) = list

double [] = []
double (x : xs) = (2 * x) : (double xs)

