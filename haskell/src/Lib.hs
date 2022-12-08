module Lib
    ( toTuples
    , printResult
    ) where

toTuples :: String -> [(String, String)]
toTuples = map (tuplify2 . words) . lines
  where
    tuplify2 [x,y] = (x,y)
    tuplify2 _     = error "foo"

printResult :: Show a => String -> String -> a -> IO ()
printResult day part answer =
  putStrLn ("day: " ++ day ++ " part: " ++ part ++ " -> " ++ show answer)
