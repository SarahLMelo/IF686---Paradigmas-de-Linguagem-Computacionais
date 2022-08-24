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

checkEqual :: Int -> Int -> Int
checkEqual s n 
    |s == vendas n = 1
    | otherwise = 0

totalVendas :: Int -> Int -> Int
totalVendas s n
        | n==0 = checkEqual s n
        | otherwise = (totalVendas s (n-1)) + (checkEqual s n) 