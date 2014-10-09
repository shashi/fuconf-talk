{- Sierpinski's triangle -}

import Mouse

hscale = sqrt(3) / 2

triangle a =
    filled black (path [(-a / 2, -hscale * a / 2),
                        (a / 2, -hscale * a / 2),
                        (0, hscale * a / 2)])

sierpinski (x, y) a n =
    if n == 0 then
        move (x, y) (triangle a)
    else
        group [
            sierpinski (x - a / 4, y - hscale * a / 4) (a / 2) (n - 1),
            sierpinski (x + a / 4, y - hscale * a / 4) (a / 2) (n - 1),
            sierpinski (x, y + hscale * a / 4) (a / 2) (n - 1)
        ]

main : Signal Element
main = lift (\x ->
           collage 400 400 [
           (sierpinski (0, 0) 300 x)
       ]) (count Mouse.clicks)
