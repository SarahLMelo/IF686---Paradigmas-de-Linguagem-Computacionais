f :: [Int] -> [Int] -> Int
f [] a = 0
f a [] = 0
f (a:as) (b:bs) | (a `mod` b) == 0 = a + (f as bs)
                | otherwise = (f as bs)
