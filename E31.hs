changeWays :: [Int] -> Int -> Int
changeWays (x:xs) n 
    | n < 0 = 0
    | n == 0 = 1
    | xs == [] = if n >= x && n `mod` x == 0 then 1 else 0
    | otherwise = (changeWays (x:xs) (n-x)) + (changeWays xs n)

main = print $ changeWays [200,100,50,20,10,5,2,1] 200