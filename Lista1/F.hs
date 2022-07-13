btoi :: String -> Int
btoi "" = 0
btoi (a:as) 
  | a == '1' = 2 ^ length as + btoi as
  | otherwise = btoi as
