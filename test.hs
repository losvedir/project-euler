data MyEither a b = MyLeft a | MyRight b

instance Functor (MyEither a) where
    fmap f (MyLeft a) = MyLeft (a)
    fmap f (MyRight b) = MyRight (f b)