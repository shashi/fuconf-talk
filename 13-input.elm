{- Synced checkboxes.
   http://elm-lang.org/learn/Interactive-UI-Elements.elm -}

import Graphics.Input (Input, input, checkbox)

check : Input Bool
check = input False

displayBoxes : Bool -> Element
displayBoxes isChecked =
    let box = checkbox check.handle identity isChecked
    in  flow right [ box, box, box ]

main : Signal Element
main = displayBoxes <~ check.signal
