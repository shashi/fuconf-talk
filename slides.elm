import Array (fromList, get)
import Maybe
import Keyboard

slides = [ [markdown|
# Elm: functional reactive UIs
|], [markdown|
# What is wrong with traditional Web UIs?
|], [markdown|
# Why Elm?
|], [markdown|
# Making things
    main = plainText "Hello, World!"
|] ]

slideArr = fromList slides

enclose mn mx = min mx << max mn

slideIdx = foldp
        (\a acc -> (enclose 0 ((length slides) - 1) (acc + a.x)))
        0
        Keyboard.arrows

main = move middle <~ (foldp (\i p -> case (get i slideArr) of
                Nothing -> p
                Just s  -> s) (head slides) slideIdx)

