import Mouse

points = foldp (::) [] lastclick
lastclick = sampleOn Mouse.clicks Mouse.position

main = lift asText points
