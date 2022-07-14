getPart :: String -> String
getPart "" = ""
getPart (a:as)
  | a == ';' = ""
  | otherwise = a:getPart as

getDouble :: String -> Int -> (Double, String)
getDouble "" n = (-1.0, "")
getDouble s 0 = getDouble (drop ((length (getPart (drop 7 s)))+1) (drop 7 s)) 1
getDouble s 1 = (read (getPart s), drop (length (getPart s) + 1) s)

createList :: String -> [Double]
createList "" = []
createList s = x:(createList y)
  where (x, y) = getDouble s 0

getMinMax :: [Double] -> Double -> Double -> (Double, Double)
getMinMax [] n m = (m, n)
getMinMax (a:as) n m
  | n < a && m > a = getMinMax as a a
  | n < a = getMinMax as a m
  | m > a = getMinMax as n a
  | otherwise = getMinMax as n m

minMaxCartao :: String -> (Double, Double)
minMaxCartao s = getMinMax x (-1.0) 10000000.0
  where x = createList s
