import Data.Numbers
import Data.Char
import Data.List

panDigitalIdentity :: Integer -> Bool
panDigitalIdentity n =
    let fs = factors n
    in any (isPanDigital n) fs

isPanDigital :: Integer -> Integer -> Bool
isPanDigital n f =
    let ns = show n
        fs = show f
        f2s = show (n `div` f)
        digs = sort . map digitToInt $ ns ++ fs ++ f2s
    in digs == [1,2,3,4,5,6,7,8,9]