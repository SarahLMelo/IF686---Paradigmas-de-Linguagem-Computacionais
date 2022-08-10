data Command = 
    Go Int
    | Turn

type Position = Int
data Direction =   L -- Left
                 | R -- Right
    deriving Show
    
type State = (Position, Direction)

move :: Command -> State -> State -- item a
move (Go n) (x, L) = ((x - n), L)
move (Go n) (x, R)  = ((x + n), R)
move Turn (x, L) = (x, R)
move Turn (x, R) = (x, L)

multimove :: [Command] -> State -> State -- item b
multimove [] a = a
multimove (a:as) s = multimove as (move a s)
