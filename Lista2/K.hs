data Tree t = Nilt |
               Node t (Tree t) (Tree t)
               deriving (Read, Show)

inserting :: Ord t => Tree t -> t -> Tree t
inserting Nilt n = Node n Nilt Nilt
inserting (Node t tl tr) n | t < n = Node t tl (inserting tr n)
                           | otherwise = Node t (inserting tl n) tr

insertList :: Ord t => Tree t -> [t] -> Tree t
insertList = foldl inserting