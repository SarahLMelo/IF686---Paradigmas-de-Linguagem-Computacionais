createString :: Int -> Char -> String
createString 0 c = []
createString b c = (c:(createString (b-1) c))

equalString :: String -> String -> Bool
equalString x y = x == y

isReplica :: String -> Int -> Char -> Bool
isReplica a b c = equalString a (createString b c)
