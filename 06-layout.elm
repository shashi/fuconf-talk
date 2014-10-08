{- Layouts -}

box c s =
    collage 100 100 [ (filled c (square 100))
                , toForm (plainText s) ]

boxes = [ box blue "A",
          box red "B",
          box green "C",
          box grey "D" ]

main = flow left boxes
