{- Shapes -}

main = collage 300 300
        [
            (filled blue (circle 80)),
            (filled green (ngon 4 80)),
            (rotate (pi/6) (filled white (ngon 3 80))),
            (move (100, 100) (rotate -(pi/6) (filled white (ngon 3 80))))
        ]




















-- main = collage 300 300
--         [ (filled blue (square 100))
--         , (filled red (circle 50))
--         ]

-- clearGrey = rgba 110 110 110 0.6
