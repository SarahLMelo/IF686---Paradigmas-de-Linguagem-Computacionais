double :: [Int] -> [Int]
double [] = []
double (a:as) = (a*2) : double as

member :: [Int] -> Int -> Bool
member [] n = False
member (a:as) n | a == n = True
                | otherwise = member as n

sumPairs :: [Int] -> [Int] -> [Int]
sumPairs a [] = a
sumPairs [] b = b
sumPairs (a:as) (b:bs) = (a+b):sumPairs as bs

digits :: String -> String
digits [] = []
digits (a:as) | a >= '0' && a <= '9' = a : digits as
              | otherwise = digits as

lesser :: [Int] -> Int -> [Int]
lesser [] n = []
lesser (a:as) n | a <= n = a:lesser as n
                | otherwise = lesser as n

greater :: [Int] -> Int -> [Int]
greater [] n = []
greater (a:as) n | a > n = a:greater as n
                 | otherwise = greater as n

quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (a:as) = quickSort (lesser as a) ++ [a] ++ quickSort (greater as a)
