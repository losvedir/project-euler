import Data.Numbers

d :: Integer -> Integer
d = sum . factors

amicable :: Integer -> Bool
amicable a = 
	let b = d a in 
	d b == a && b /= a

main = print . sum . filter amicable $ [1..10000]