data Set t = Set [t]
    deriving (Show)

instance Eq t => Eq(Set t) where
    (Set []) == (Set []) = True
    (Set (a:as)) == (Set (b:bs)) = eqSet (a:as) (b:bs)
    _ == _ = False

eqSetAux :: Eq t => [t] -> [t] -> Bool
eqSetAux [] b = True
eqSetAux (a:as) [] = False
eqSetAux (a:as) (b:bs) | (a == b) = eqSetAux as (b:bs)
                    | otherwise = (eqSetAux [a] [c | c <- bs, c == a]) && (eqSetAux as (b:bs))

eqSet :: Eq t => [t] -> [t] -> Bool
eqSet a b = (eqSetAux a b) && (eqSetAux b a)
