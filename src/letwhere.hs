-- letwhere.hs
--
-- Exercise to practice converting let expressions to
-- where declarations.


-- let x = 3; y = 1000 in x * 3 + y
first = x * 3 + y where
    x = 3
    y = 1000

-- let y = 10; x = 100 * 5 + y in x * 5
second = x * 5 where
     x = 100 * 5 + y
     y = 10

-- let x = 7; y = negate x; z = y * 10 in z / x + y
third = z / x + y where
    x = 7
    y = negate x
    z = y * 10

