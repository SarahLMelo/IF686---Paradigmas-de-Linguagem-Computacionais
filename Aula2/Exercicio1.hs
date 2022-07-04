vendas :: Int -> Int
vendas 0 = 20
vendas 1 = 30
vendas 2 = 40
vendas 3 = 50
vendas 4 = 25
vendas 5 = 60
vendas 6 = 20
vendas 7 = 40
vendas n = 0

conversor :: Bool -> Int
conversor cond
    | cond = 1
    | otherwise = 0

vendasIguaisA :: Int -> Int -> Int
vendasIguaisA s n
    | n == 0 = conversor(vendas 0 == s)
    | otherwise = conversor(vendas n == s) + vendasIguaisA s (n-1)

main :: IO ()
main = print (show(vendasIguaisA 4 8))