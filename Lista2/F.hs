data Tree t = Nilt |
              Node t (Tree t) (Tree t)
              deriving (Read)


auxmaiorDiametro :: Ord t => Tree t -> Int
auxmaiorDiametro Nilt = 0
auxmaiorDiametro (Node a al ar) = 1 + max (auxmaiorDiametro al) (auxmaiorDiametro ar )

maiorDiametro :: Ord t => Tree t -> Int
maiorDiametro Nilt = 0
maiorDiametro (Node a al ar) = max (1 + auxmaiorDiametro al + auxmaiorDiametro ar) (max (maiorDiametro al) (maiorDiametro ar))

main :: IO ()
main = do
       s <- getLine
       let result = maiorDiametro (read s::Tree Int)
       print result