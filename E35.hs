import Data.Numbers.Primes

possibility :: Int -> Bool
possibility = not . any (`elem` "024568") . show

rotate :: String -> String
rotate s = last s : init s

rotateN :: Int -> String -> [String]
rotateN 1 s = [rotate s]
rotateN n s =
    let rotated = rotate s
    in rotated : rotateN (n-1) rotated

numRotations :: Int -> [Integer]
numRotations n = 
    let snum = show n
        l = length snum
    in map read . rotateN l $ snum

isCirclePrime :: Int -> Bool
isCirclePrime = all isPrime . numRotations

main = do
    print $ length [n | n<-[100..999999], possibility n, isCirclePrime n]