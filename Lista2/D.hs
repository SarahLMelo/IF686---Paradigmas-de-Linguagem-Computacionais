sieveAux :: [Int] -> [Int]
sieveAux [] = []
sieveAux (a:as) = a: sieveAux [b | b <- as, b `mod` a /= 0]

primes :: Int -> [Int]
primes a = sieveAux [2..a]

auxFatPrime :: Int -> Int -> Int -> (Int, Int)
auxFatPrime n m c | mod n m == 0 = auxFatPrime (div n m) m (c+1)
                  | otherwise = (m, c)

fatorando :: Int -> [Int] -> [(Int, Int)]
fatorando n [] = []
fatorando n (a:as) | n < a = []
                   | mod n a == 0 = auxFatPrime n a 0 : fatorando n as
                   | otherwise = fatorando n as

fatPrime :: Int -> [(Int, Int)]
fatPrime 1 = []
fatPrime a = fatorando a (primes 100000)