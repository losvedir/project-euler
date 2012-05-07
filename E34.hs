import Data.Char

factorial :: Int -> Int
factorial n = product [2..n]

curious :: Int -> Bool
curious n = n == (sum . map (factorial . digitToInt) . show $ n)