import Graphics.Input (Input, input, checkbox)

check = input False

-- checkbox : Handle a -> (Bool -> a) -> Bool -> Element

cb = checkbox check.handle (\x -> x) False
main = (\v -> flow down [
        cb , asText v]) <~ check.signal
