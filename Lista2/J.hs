data Tree t = Nilt |
               Node t (Tree t) (Tree t)
               deriving (Read, Show)

isBSTAuxMenor :: Ord t => Tree t -> t -> Bool
isBSTAuxMenor Nilt n = True
isBSTAuxMenor (Node a al ar) n | n < a = isBSTAuxMenor al n && isBSTAuxMenor ar n
                               | otherwise = False

isBSTAuxMaior :: Ord t => Tree t -> t -> Bool
isBSTAuxMaior Nilt n = True
isBSTAuxMaior (Node a al ar) n | n > a = isBSTAuxMaior al n && isBSTAuxMaior ar n
                               | otherwise = False

isBST :: Ord t => Tree t -> Bool
isBST Nilt = True
isBST (Node a al ar) = isBST al && isBST ar && isBSTAuxMenor ar a && isBSTAuxMaior al a