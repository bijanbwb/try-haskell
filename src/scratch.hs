{-
    Scratch module for testing out various code snippets.
    Some Haskell features can't be learned in the REPL.
-}
module Scratch where

-- DECLARATIONS

hello :: String
hello = "hello"

x :: Int
x = 3

y :: Int
y = y + 1

-- MAIN

main :: IO ()
main = do
    putStrLn hello
