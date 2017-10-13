quicksort [] = []
quicksort (x:xs) = quicksort smaller ++ [x] ++ quicksort larger
                   where
                     smaller = [a | a <- xs, a <= x]
                     larger =  [b | b <- xs, b > x]

main = do
  putStrLn $ show $ quicksort [1, 10, 5, 3, 9]
