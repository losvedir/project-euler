fib :: Int -> Integer
fib 1 = 1
fib 2 = 1
fib n = fibs !! (n-1) + fibs !! (n-2)
    where
        fibs = map fib [1..]


fib2 :: Int -> Integer
fib2 1 = 1
fib2 2 = 1
fib2 n = go 1 2 (n-2)
    where
        go _ acc 1 = acc
        go j acc n = go acc (acc+j) (n-1)

