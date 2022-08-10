import Data.Char

p :: String -> Int
p [] = 0
p (a:as) | (a >= '0') && (a <= '9') = max (ord a - ord '0') (p as)
         | otherwise = p as
