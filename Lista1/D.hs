findElement :: Char -> [(Char, Char)] -> Char
findElement c [] = ' '
findElement c (a: as)
  | c == fst a = snd a
  | otherwise = findElement c as

decEnigma :: String -> [(Char, Char)] -> String
decEnigma "" l = ""
decEnigma (a:as) l = (findElement a l):(decEnigma as l)
