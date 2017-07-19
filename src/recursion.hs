-- recursion.hs
--
-- Example from Haskell Fundamentals course.
--
-- Usage:
-- $ stack ghci
-- > :load recursion.hs
-- > pow2 0
-- 1
-- > pow2 2
-- 4
-- > repeatString "hi" 3
-- "hihihi"

-- 2 to the power of n.
pow2 n =
  if n == 0
  then 1
  else 2 * (pow2 (n - 1))


-- Repeat a string n times.
repeatString str n =
  if n == 0
  then ""
  else str ++ (repeatString str (n - 1))

-- Double each number in a list of numbers.
double nums =
  if null nums
  then []
  else (2 * (head nums)) : (double (tail nums))
