bSort :: [String] -> [String]
bSort [] = [];
bSort (a:as) = bSort [b | b <- as, b <=a] ++ [a] ++ bSort [c | c <- as, c > a]

main = do
       a <- getLine
       let result = bSort (read a :: [String])
       print result