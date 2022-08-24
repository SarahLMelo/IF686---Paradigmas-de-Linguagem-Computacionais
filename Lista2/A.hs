data Tree t = Node t (Tree t) (Tree t) | Nilt
  deriving (Read, Show)

conversor :: Int -> Char
conversor x | mod x 5 == 0 = 'E'
            | mod x 5 == 1 = 'M'
            | mod x 5 == 2 = 'A'
            | mod x 5 == 3 = 'C'
            | otherwise = 'S'

dna :: Tree Int -> String
dna Nilt = ""
dna (Node a al ar) =  dna al ++ [conversor a] ++ dna ar

strToList :: String -> String -> Int -> [String]
strToList "" "" n = []
strToList "" a n = [a]
strToList (a:as) b n | mod n 8 == 7 = (b++[a]) : strToList as "" 0
                     | otherwise = strToList as (b++[a]) (n+1)

dna1 :: Tree Int -> [String]
dna1 t = strToList (dna t) "" 0

main = do
bin <- getLine
let result = dna1 (read bin::Tree Int)
print result