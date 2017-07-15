-- test.hs
--
-- First example from the Haskell Programming book.
-- Run from the command line with the following:
--   $ stack ghci
--   > :load test.hs
--   > sayHello "Haskell"
--   Hello, Haskell!

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

