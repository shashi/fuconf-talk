import Graphics.Input (Input, input, checkbox)

check = input "No"

-- checkbox : Handle a -> (Bool -> a) -> Bool -> Element

cb = checkbox check.handle (\x -> if x then "Yes" else "No") False
main = (\v -> container 300 300 middle (flow down [
        cb , plainText v])) <~ check.signal
