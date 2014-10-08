{- Path -}

-- path : [(Float, Float)] -> Path
-- traced : LineStyle -> Path -> Form

pts = 100
sinPlot w h =
   map (\x -> (w * x / pts, h * (sin (x / pts * 2 * pi)))) [1..pts]

main = collage 400 500
        [ (move (-200, 0)
                (traced defaultLine (path (sinPlot 400 100))))
        ]
