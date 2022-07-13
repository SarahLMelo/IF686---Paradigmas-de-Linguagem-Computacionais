sumTo :: Int -> Int
sumTo n
      | n == 1 = 1
      | otherwise = n + sumTo (n-1)
