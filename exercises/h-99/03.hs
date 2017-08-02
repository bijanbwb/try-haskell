module Three where

{-

H-99 Problem 3: Find the K'th element of a list. The first element in the list is number 1.

Examples:
> elementAt [1, 2, 3] 2
2

Usage:
$ runhaskell 03.hs
✅  elementAt [1, 2, 3] 2 == 2
-}

-- elementAt

elementAt :: [a] -> Int -> a
elementAt xs i = head $ drop (i - 1) xs

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
    let result = elementAt [1, 2, 3] 2 == 2 in
        putStrLn $ displayResult result ++ "  elementAt [1, 2, 3] 2 == 2"
