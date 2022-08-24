insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x a = [y | y <- a, y <= x] ++ [x] ++ [y | y <- a, y > x]

insertionSort :: [Int] -> [Int]
insertionSort = foldr insert []