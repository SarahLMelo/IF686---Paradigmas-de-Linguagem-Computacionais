getPart :: String -> String
getPart "" = ""
getPart (a:as)
  | a == ';' = ""
  | otherwise = a:getPart as

getDouble :: String -> String -> Int -> (Double, String)
getDouble a "" n = (-1.0, "")

getDouble a s 3 = (0.0, drop (length (getPart s) + 1) s)
getDouble a s 0 = getDouble a (drop ((length (getPart (drop 7 s)))+1) (drop 7 s)) 1
getDouble a s 1 = (read(getPart s), drop (length (getPart s) + 1) s)
getDouble a s 2 
  | getPart(drop 3 s) == a = getDouble a s 0
  | otherwise = getDouble a (drop ((length (getPart (drop 7 s)))+1) (drop 7 s)) 3

createList :: String -> String -> [Double]
createList "" a = []
createList s a = x:(createList y a)
  where (x, y) = getDouble a s 2

logMes :: String -> String -> Double
logMes a s = sum (createList s a)
