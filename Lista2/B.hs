sumList :: [Int] -> [Int] -> [Int]
sumList [] b = b
sumList a [] = a
sumList (a:as) (b:bs) = (a+b) : sumList as bs

dna2Aux :: String -> String -> Double -> Double -> [Int]
dna2Aux [] [] cnt pon | (pon / cnt) < 0.1 = [0, 0, 0]
                     | (pon / cnt) <= 0.3 = [1, 0, 0]
                     | (pon / cnt) <= 0.7 = [0, 1, 0]
                     | otherwise = [0, 0, 1]
dna2Aux [] (b:bs) cnt pon = dna2Aux [] bs (cnt+1.0) pon
dna2Aux a [] cnt pon = dna2Aux [] a cnt pon
dna2Aux (a:as) (b:bs) cnt pon | a == b = dna2Aux as bs (cnt+1.0) (pon+1.0)
                              | otherwise = dna2Aux as bs (cnt+1.0) pon

dna2 :: [String] -> [String] -> [Int]
dna2 [] _ = [0, 0, 0]
dna2 _ [] = [0 , 0, 0]
dna2 (a:as) (b:bs) = sumList (dna2Aux a b 0.0 0.0) (dna2 as bs)
