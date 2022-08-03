data List t = Nil | Cons t (List t)
              deriving(Eq, Show)

toList :: List t -> [t]
toList Nil = []
toList (Cons x xs) = (x:(toList xs))

fromList :: [t] -> List t
fromList [] = Nil
fromList (x:xs) = Cons x (fromList xs) 
