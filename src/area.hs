-- area.hs
--
-- Run from the command line with the following:
--   $ stack ghci
--   > :load area.hs
--   > main
--   "314.59..."

area d = pi * (r * r)
  where r = d / 2

main :: IO ()
main = do
  print (show (area 20))
