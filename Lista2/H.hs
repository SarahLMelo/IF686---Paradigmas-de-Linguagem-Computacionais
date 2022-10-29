import Prelude hiding (Maybe (..))

data Maybe a = Just a |
               Nothing
               deriving(Show)

division :: Integral a => a -> a -> Maybe a
division a b = 
                if b == 0 then Nothing
                else Just $ div a b

isolateNumber :: String -> String -> (Int, String)
isolateNumber [] a = (read a :: Int, [])
isolateNumber (a:as) b | a <= '9' && a >= '0' = isolateNumber as (b ++ [a])
                       | otherwise = (read b :: Int, a:as)

treatString :: String -> (Int, String, Int)
treatString [] = (0, [], 0)
treatString a = (fst(isolateNumber a ""), 
                take 3 (snd(isolateNumber a "")),
                fst(isolateNumber (drop 3 (snd(isolateNumber a ""))) ""))

calc :: (Int, String, Int) -> Maybe Int
calc (a, "", b) = Just 0
calc (a, "sum", b) = Just (a + b)
calc (a, "sub", b) = Just (a - b)
calc (a, "mul", b) = Just (a * b)
calc (a, "div", b) = division a b
calc (a, any, b) = Just 0

main = do
       a <- getLine
       print (calc (treatString a))