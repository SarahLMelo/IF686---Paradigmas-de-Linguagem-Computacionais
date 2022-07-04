conversor :: Int -> Bool
conversor n
    | n == 0 = True
    | otherwise = False

primosEntreSi :: Int -> Int -> Bool --REFAZER PQ MOSQUEI
primosEntreSi a b
    | conversor(a `mod` b) || conversor(b `mod` a) = False
    | otherwise = True

fatorialAux :: Int -> Int -> Int
fatorialAux n i
    |i == 1 = 1
    |otherwise = (i * fatorialAux n (i-1) )

fatorial :: Int -> Int
fatorial n = fatorialAux n n