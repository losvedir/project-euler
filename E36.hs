palindrome :: String -> Bool
palindrome s = s == reverse s

showBase2 :: Integer -> String
showBase2 n = go n powersOfTwo
    where 
        powersOfTwo = reverse . takeWhile (<=n) $ [2^a | a<-[0..]]
        go :: Integer -> [Integer] -> String
        go _ [] = []
        go n twos = if (head twos <= n) 
                    then '1' : go (n - head twos) (tail twos) 
                    else '0' : go (n) (tail twos)


main = print $ sum [n | n<-[1..999999], palindrome . show $ n, palindrome . showBase2 $ n]