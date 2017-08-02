module Two where

{-

H-99 Problem 2: Find the second to last element of a list.

Examples:
> myButLast [1, 2, 3, 4]
3

Usage:
$ runhaskell 02.hs
✅  myButLast [1, 2, 3, 4] == 3
-}

-- myButLast

myButLast :: [a] -> a
myButLast xs = head $ drop 1 $ reverse xs

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
    let result = myButLast [1, 2, 3, 4] == 3 in
        putStrLn $ displayResult result ++ "  myButLast [1, 2, 3, 4] == 3"
