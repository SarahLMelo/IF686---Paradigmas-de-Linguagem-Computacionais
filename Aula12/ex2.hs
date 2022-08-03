data Tree t = NilT |
          Node t (Tree t) (Tree t)
          deriving(Eq, Show)

depth :: Tree t -> Int
depth NilT = 1
depth (Node a al ar) = 1 + (max (depth al) (depth ar))

collapse :: Tree t -> [t]
collapse NilT = []
collapse (Node a al ar) = (a:((collapse al) ++ (collapse ar)))

mapTree :: (t -> u) -> Tree t -> Tree u
mapTree op NilT = NilT
mapTree op (Node a al ar) = Node (op a) (mapTree op al) (mapTree op ar)
