-- sayHello.hs
-- First example from the Haskell Programming book.

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

