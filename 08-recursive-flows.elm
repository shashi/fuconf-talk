{- Layouts -}
import Window

box (w, h) =
    collage (round w) (round h)
        [ (outlined defaultLine (rect w h)) ]

cut (w, h) dir =
    case dir of
        DUp -> (w, h/2)
        DDown -> (w, h/2)
        _ -> (w/2, h)

stack (w, h) (d::next) n =
    if | n == 0 -> empty
       | otherwise ->
             flow d [ box (cut (w, h) d),
                 stack (cut (w, h) d) (next ++ [d]) (n-1)]

main =
        (stack (512, 512) [down, left, up, right] 15)
