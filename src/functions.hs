-- functions.hs
-- Simple function examples.
-- Load into ghci with the following:
--   $ ghci functions.hs

-- Square a number.
-- Example:
--   > square 10
--   100
square x = x * x

-- Take the largest of a and b, then multiply that by x.
-- Example:
--   > maxMult 1 2 10
--   20
maxMult a b x = (max a b) * x

-- Return "Positive" for positive number arguments and
-- "Negative" for number arguments below zero.
-- Example:
--   > posOrNeg 1
--   "Positive"
posOrNeg x =
  if x >= 0
  then "Positive"
  else "Negative"

