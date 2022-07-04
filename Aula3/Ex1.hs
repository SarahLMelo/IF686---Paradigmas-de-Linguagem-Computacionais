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

somaVendas :: Int -> Int -> Int
somaVendas i n
    | i == n = vendas i
    | otherwise = vendas i + somaVendas (i+1) n


mediaVendas :: Int -> Float
mediaVendas n = fromIntegral (somaVendas 0 n) / fromIntegral n

auxEspacos :: Int -> Int -> String -> String
auxEspacos i n s
    | i+1 == n = s ++ " "
    |otherwise = auxEspacos (i+1) n (s ++ " ")


addEspacos :: Int -> IO()
addEspacos n = putStr(auxEspacos 0 n "")

paraDireita :: Int -> String -> String
paraDireita n s = auxEspacos 0 n "" ++ s

imprimeTabelaAux1 :: Int -> Int -> String
imprimeTabelaAux1 i n
    |i == n = "  " ++ show (vendas i) ++ paraDireita 6 (show(vendas i)) ++ "\n"
    |otherwise = "  " ++ show (vendas i) ++ paraDireita 6 (show(vendas i)) ++ "\n" ++ imprimeTabelaAux1 (i+1) n


imprimeTabela :: Int -> IO()
imprimeTabela n = putStrLn("Semana\tVendas\n" ++ imprimeTabelaAux1 0 n ++ "Total: " ++ show(somaVendas 0 n) ++ "\n" ++ "Media: " ++ show(mediaVendas n))
