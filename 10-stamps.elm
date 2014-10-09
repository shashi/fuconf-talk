import Mouse

stamp (w, h) (x, y) =
    ngon 5 30 |>
    filled (hsl (toFloat x) 0.5 0.6 ) |>
    rotate (toFloat x) |>
    move ((toFloat x) - w / 2, h / 2 - (toFloat y))

stamps (w, h) points = collage (round w) (round h)
                        (map (stamp (w, h)) points)

main = stamps (512, 512) [(50, 50), (250, 450), (450, 50)]
