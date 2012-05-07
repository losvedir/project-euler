import Data.Char

sumOfPowerDigits :: Integer -> Integer
sumOfPowerDigits = sum . map ((^5) . fromIntegral . digitToInt) . show

sameAsPowerSum :: Integer -> Bool
sameAsPowerSum n = n == sumOfPowerDigits n

main = do
    print $ sum . filter sameAsPowerSum $ [0..354294]