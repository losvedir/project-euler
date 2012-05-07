toTriangle :: String -> [[Integer]]
toTriangle =  map (map read . words ) . lines

munge = id

main = do 
	triangle <- fmap toTriangle (readFile "E67triangle.txt")
	print (munge triangle)