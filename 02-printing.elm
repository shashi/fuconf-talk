
{- printing literal values -}

md = [markdown|
# Hello, FuConf!
How are you doing today?
|]

record = {id=007, name="Bond"}

main = asText record
