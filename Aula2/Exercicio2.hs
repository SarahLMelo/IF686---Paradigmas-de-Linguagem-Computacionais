conversor :: Int -> Bool
conversor n
    | n == 0 = False
    | otherwise = True

invConversor :: Int -> Bool
invConversor n
    | n == 0 = False
    | otherwise = True

auxIsPrime :: Int -> Int -> Bool
auxIsPrime n maxN
    | maxN == 1 = True
    | conversor((n `mod` maxN)) && maxN /= 1 = (auxIsPrime n (maxN-1))
    | otherwise = False

isPrime :: Int -> Bool
isPrime n
    | n <= 1 = False
    |otherwise = auxIsPrime n (n-1)
