import Data.Numbers.Primes

f :: Integer -> Integer -> Integer -> Integer
f a b n = n^2 + a*n + b

primesGenerated :: (Integer -> Integer) -> Int
primesGenerated f = length . takeWhile (\n -> isPrime n && n >= 2) $ map f [0..]

main = do
    let fs = [(primesGenerated (f a b), a, b) | a <- [-1000..1000], b <- [-1000..1000]]
        result = maximum fs
    print result