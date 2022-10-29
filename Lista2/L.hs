type Comando = String
type Valor = Int

conta :: (Comando, Valor) -> Int -> Int
conta ("Multiplica", v) n = v * n
conta ("Soma", v) n = v + n
conta ("Subtrai", v) n = n - v
conta ("Divide", v) 0 = -666
conta ("Divide", v) n = div v n

executaAux :: [(Comando, Valor)] -> Int -> Int
executaAux [] n = n
executaAux (a:as) n = executaAux as (conta a n)



executa :: [(Comando, Valor)] -> Int
executa a = executaAux a 0