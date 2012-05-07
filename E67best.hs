import E18 (bestSoFar)

getTriangle :: String -> [[Integer]]
getTriangle = map (map read . words) . lines

main = do
	f <- readFile "E67triangle.txt"
	let tri = getTriangle f
	print $ foldr1 bestSoFar tri