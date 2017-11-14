calculatesum [] = 0
calculatesum (x:xs) = x + sum xs

main = do
  putStrLn $ show $ calculatesum [1, 2, 3]
