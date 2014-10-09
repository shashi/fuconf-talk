import Mouse
import Keyboard
import Window

main : Signal Element
main = lift asText (every 10)
