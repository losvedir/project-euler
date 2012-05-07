
import E18 (bestSoFar)

main = do
	f <- readFile("E67triangle.txt")
	let ls = lines f
	let ws = map words ls
	let tri = map (\l -> map (\x -> (read x :: Integer)) l)

	let w = [words x | x <- lines f]
	let tri2 = [[ (read x)::Integer | x <- y] | y <-w]

	let tri3 = toTriangle f

	putStrLn $ show $ foldr1 bestSoFar tri3


toTriangle :: String -> [[Integer]]
toTriangle =  map (map read . words ) . lines