sieveAux :: [Int] -> [Int]
sieveAux [] = []
sieveAux (a:as) = [a] ++ sieveAux [b | b <- as, (b `mod` a /= 0)]

primes :: Int -> [Int]
primes a = sieveAux [2..a]
