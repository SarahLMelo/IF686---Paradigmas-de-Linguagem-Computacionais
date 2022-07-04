vendas :: Int -> Int
vendas 0 = 20
vendas 1 = 30
vendas 2 = 40
vendas 3 = 50
vendas 4 = 25
vendas 5 = 60
vendas n = 0

maxVendas :: Int -> Int
maxVendas n
    | n == 0 = vendas 0
    | otherwise  = max (maxVendas (n - 1)) (vendas n)