
{- Mouse position -}

import Window

main : Signal Element
main = asText <~ Window.dimensions
