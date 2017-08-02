{-

H-99 Problem 1: Find the last element of a list.

Examples:
> myLast [1, 2, 3, 4]
4
> myLast ['x', 'y', 'z']
'z'

Usage:
$ runhaskell 01.hs
✅ myLast [1, 2, 3, 4] == 4 
-}

-- myLast

myLast :: [a] -> a
myLast xs = head $ reverse xs

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
    let result = myLast [1, 2, 3, 4] == 4 in
        putStrLn $ displayResult result ++ "  myLast [1, 2, 3, 4] == 4"