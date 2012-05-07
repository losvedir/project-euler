import Data.Char

curious :: Int -> Int -> Bool
curious m n =
    let ms = show m :: String
        m1 = digitToInt . head $ ms
        m2 = digitToInt . head . tail $ ms
        ns = show n :: String
        n1 = digitToInt . head $ ns
        n2 = digitToInt . head . tail $ ns
        f = toRational m / toRational n
    in  n2 /= 0 && f < 1 &&
        (m1 == n1 && toRational m2 / toRational n2 == f
        || m1 == n2 && toRational m2 / toRational n1 == f
        || m2 == n1 && toRational m1 / toRational n2 == f
        || m2 == n2 && toRational m1 / toRational n1 == f)