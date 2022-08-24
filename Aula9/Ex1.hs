func :: Int -> Int -> Int
func x y = (x*5) + y

inv :: (t -> u -> v) -> u -> t -> v
inv f x y = f y x