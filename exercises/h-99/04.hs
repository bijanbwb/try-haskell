module Four where

{-

H-99 Problem 4: Find the number of elements of a list.

Examples:
> myLength [123, 456, 789]
3

Usage:
$ runhaskell 04.hs
✅  myLength [123, 456, 789] == 3
-}

-- myLength

myLength :: [a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs

-- HELPERS

displayResult :: Bool -> String
displayResult bool =
    case bool of
        True ->
            "✅"
        False ->
            "❌"

-- MAIN

main :: IO ()
main = do
    let result = myLength [123, 456, 789] == 3 in
        putStrLn $ displayResult result ++ "  myLength [123, 456, 789] == 3"
