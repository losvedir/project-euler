cycleInFrac :: Int -> Int -> Int
cycleInFrac m n
    | m < n = cycleInFrac (10*m) n
    | otherwise = go [] m n
    where
        go :: [Int] -> Int -> Int -> Int
        go lst m n 
            | m `mod` n == 0 = 0
            | otherwise = 
                let d = m `div` n
                    r = m `mod` n
                in if r `elem` lst
                    then (1+) . length . takeWhile (/= r) $ lst
                    else go (r:lst) (r*10) n
