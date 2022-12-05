module Four where
import Data.List (sort)
import Data.List.Split (splitOn)

four :: String -> Int
four = sum . map (fromEnum . inRange . sort) . parse . lines
  where
    inRange [Range s e, Range s' e'] = s >= s' && e <= e'

parse :: [String] -> [[Range]]
parse = map (map (parseRange . splitOn "-") . splitOn ",")
  where
    toRange [s, e] = Range { start = s, end = e}
    parseRange = toRange . map (read :: String -> Int)

data Range = Range
  { start :: !Int
  , end   :: !Int
  } deriving Eq

instance Ord Range where
  compare (Range s e) (Range s' e') = (e - s) `compare` (e' - s')
