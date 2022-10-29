data Cmd = Cursor Int
           | Backspace Int
           | Delete Int
           | Insert String
           deriving (Read)

editTextAux :: String -> Int -> [Cmd] -> String
editTextAux s c [] = s
editTextAux s c (Cursor n:as) = editTextAux s (c+n) as
editTextAux s c (Backspace n:as) = editTextAux (take (max (c-n) 0) s ++ drop n s) (max (c-n) 0) as
editTextAux s c (Delete n:as) = editTextAux (take c s ++ drop (c + n) s) c as
editTextAux s c (Insert n:as) = editTextAux (take c s ++ n ++ s) (c + length s) as

editText :: String -> [Cmd] -> String
editText s = editTextAux s 0