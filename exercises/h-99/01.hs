module One where

{-

H-99 Problem 1: Find the last element of a list.

Examples:
> myLast [1, 2, 3, 4]
4

Usage:
$ runhaskell 01.hs
✅  myLast [1, 2, 3, 4] == 4
-}

-- myLast

myLast :: [a] -> a
myLast xs = head $ reverse xs

-- myLast'

myLast' :: [a] -> Maybe a
myLast' [] = Nothing
myLast' [x] = Just x
myLast' (x:xs) = myLast' xs

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
    let result = myLast [1, 2, 3, 4] == 4
        resultMaybe = myLast' [1, 2, 3, 4] == Just 4 in
        putStrLn $ displayResult result ++ "  myLast [1, 2, 3, 4] == 4" ++ "\n"
            ++ displayResult resultMaybe ++ "  myLast' [1, 2, 3, 4] == Just 4"