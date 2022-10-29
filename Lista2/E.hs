auxfuncCall :: [Int] -> [Int] -> [Int]
auxfuncCall [] [] = []
auxfuncCall [] a = a
auxfuncCall a [] = a
auxfuncCall (a:as) (b:bs) = (a+b):auxfuncCall as bs

addZeros :: [Int] -> [Int] -> ([Int], [Int])
addZeros a b | length a < length b = addZeros b a
             | length a == length b = (a, b)
             | otherwise = addZeros a (0:b)

transformar :: [Int] -> Int -> [Int]
transformar [] 0 = []
transformar [] n = [n]
transformar (a:as) x = mod (a+x) 10 : transformar as (div (a + x) 10)

somarListas :: [Int] -> [Int] -> [Int]
somarListas [] [] = []
somarListas a [] = a
somarListas [] b = b
somarListas a b = reverse (transformar (reverse (auxfuncCall (fst(addZeros a b)) (snd(addZeros a b)))) 0)

main :: IO ()
main = do
input1 <- getLine
input2 <- getLine
let result = somarListas (read input1 :: [Int])  (read input2 :: [Int])
print result