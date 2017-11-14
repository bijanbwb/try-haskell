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

-- Recursively calculate the length of a list.
lengthy :: [a] -> Int
lengthy [] = 0
lengthy (x:xs) = 1 + length xs

-- Recursively filter through a list.
filtery :: (a -> Bool) -> [a] -> [a]
filtery pred [] = []
filtery pred (x:xs)
  | pred x = x : filtery pred xs
  | otherwise = filtery pred xs

-- Recursively map through a list.
mappy :: (a -> b) -> [a] -> [b]
mappy _ [] = []
mappy f (x:xs) = f x : mappy f xs

-- Recursively reverse a list.
reversify :: [a] -> [a]
reversify [] = []
reversify (x:xs) = reversify xs ++ [x]

-- Recursively sort a list.
sortify :: (Ord a) => [a] -> [a]
sortify [] = []
sortify (x:xs) =
  sortify (filter (<= x) xs)
  ++ [x] ++
  sortify (filter (> x) xs)

{-
  Converted quicksort example to JavaScript for practice.

  var sortify = function(list) {

    if (list.length === 0) {
      return [];
    } else {
      let start = sortify(list.filter(x => x < list[0]));
      let middle = list[0];
      let end = sortify(list.filter(x => x > list[0]));
      return start.concat(middle).concat(end);
    }

  };
-}

