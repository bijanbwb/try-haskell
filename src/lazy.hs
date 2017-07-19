-- lazy.hs
--
-- Example of lazy evaluation.
--
-- Run from the command line with the following:
--   $ stack ghci
--   > :load lazy.hs
--   > null ints
--   False
--   > head ints
--   1
--   > take 3 ints
--   [1,2,3]
--   ints
--   *This will recursively list integers until Ctrl+C*

-- Infinite list of integers starting from n.
intsFrom n = n : (intsFrom (n + 1))
ints = intsFrom 1
