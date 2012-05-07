import Data.Numbers (factors)
import qualified Data.Set as Set

isAbundant :: Integer -> Bool
isAbundant n = sum (factors n) > n

canBeSummedBy :: [Integer] -> Set.Set Integer -> Integer -> Bool
canBeSummedBy [] s _ = False
canBeSummedBy (x:xs) s n = (n-x) `Set.member` s || canBeSummedBy xs s n

main = do
    let abundants = filter isAbundant [12..28123]
    let as = Set.fromList abundants
    print . sum . filter (not . canBeSummedBy abundants as) $ [1..28123]