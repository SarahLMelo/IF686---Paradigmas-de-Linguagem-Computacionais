import Data.List
import Data.Time

data Time = Egito | Russia | Arabia | Uruguai 
          | Ira | Marrocos | Portugal | Espanha

          deriving Eq

type Jogo = (Time, Int, Int, Time)

gols :: Time -> [Jogo] -> Int -- a
gols search [] = 0;
gols search ((a, aG, bG, b) : xs) | a == search = aG + gols search xs
                                  | b == search = bG + gols search xs
                                  | otherwise = gols search xs

saldo :: Time -> [Jogo] -> Int -- b
saldo search [] = 0;
saldo search ((a, aG, bG, b) : xs) | a == search = aG - bG + saldo search xs
                                  | b == search = bG - aG + saldo search xs
                                  | otherwise = saldo search xs

pontuando :: Jogo -> Int
pontuando (a, aG, bG, b) | aG > bG = 3
                         | aG == bG = 1
                         | otherwise = 0

pontos :: Time -> [Jogo] -> Int -- c
pontos search [] = 0;
pontos search ((a, aG, bG, b) : xs) | a == search = pontuando (a, aG, bG, b) + pontos search xs
                                    | b == search = pontuando (a, bG, aG, b) + pontos search xs
                                    | otherwise = pontos search xs

data Nome = A | B | C | D | E | F | G | H
        deriving Eq

type Grupo = (Nome, Time, Time, Time, Time) -- d

auxClassificados :: Grupo -> [Jogo] -> [(Int, Time)]
auxClassificados _ [] = [(0, Egito)]
auxClassificados (_, a, b, c, d) jogos = [(pontos a jogos, a),
                                          (pontos b jogos, b),
                                          (pontos c jogos, c),
                                          (pontos d jogos, d) ]

ordenando :: [(Int, Time)] -> [(Int, Time)]
ordenando [] = []
ordenando ((a, b):xs) = (ordenando [(c, d) | (c, d) <- xs, c > a]) ++ [(a, b)] ++ ordenando [(c, d) | (c, d) <- xs, c < a]

listToPair :: [(Int, Time)] -> (Time, Time)
listToPair [] = (Egito, Egito)
listToPair [(pA, a), (pB, b)] = (a, b)
listToPair s = (Egito, Egito)

classificados :: Grupo -> [Jogo] -> (Time, Time)
classificados a [] = (Egito, Egito)
classificados grupo jogos = listToPair (take 2 (ordenando (auxClassificados grupo jogos)))