data Pos = Pos {x :: Float, y :: Float} deriving (Show)

data Line = Line {pos1 :: Pos, pos2 :: Pos} deriving (Show)

makeLine :: Pos -> Pos -> Line
makeLine p1 p2 = Line p1 p2

-- calculate x
getX :: Line -> Float -> Float
getX (Line (Pos x1 y1) (Pos x2 y2)) y = x1 + (x2 - x1) * (y - y1) / (y2 - y1)

-- calculate y
getY :: Line -> Float -> Float
getY (Line (Pos x1 y1) (Pos x2 y2)) x = y1 + (y2 - y1) * (x - x1) / (x2 - x1)
