import Data.List.Split (splitOn)
import Data.List (sort, elemIndex)

main = do
    f <- readFile "E22names.txt"
    let names = prepareNames f
    let answer = sum . map valueOfTuple $ names
    return answer

prepareNames :: String -> [(Integer, String)]
prepareNames = zip [1..] . (sort . splitOn ",")

valueOfLetter :: Char -> Integer
valueOfLetter x = 
    case elemIndex x "ABCDEFGHIJKLMNOPQRSTUVWXYZ" of
        Nothing -> 0
        Just n -> 1 + fromIntegral n

valueOfName :: String -> Integer
valueOfName = sum . map valueOfLetter

valueOfTuple :: (Integer, String) -> Integer
valueOfTuple (n, s) = n * valueOfName s