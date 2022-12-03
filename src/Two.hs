module Two(two) where

import           Data.Bifunctor  (Bifunctor (bimap))
import Control.Monad (join)

two :: [(String, String)] -> Int
two matches = shapes + outcomes
  where
    shapes = sum . map (shapeVal . snd) $ matches
    outcomes = sum . map (outcomeVal . rank . normalize) $ matches

data  Hand = B | C | A deriving (Show, Eq, Ord)

rank :: (Hand, Hand) -> Ordering
rank (A, B) = LT
rank (B, A) = GT
rank (x, y) = compare x y

shapeVal :: String -> Int
shapeVal "X" = 1
shapeVal "Y" = 2
shapeVal "Z" = 3

outcomeVal :: Ordering -> Int
outcomeVal GT = 0
outcomeVal EQ = 3
outcomeVal LT = 6

normalize :: (String, String) -> (Hand, Hand)
normalize = join bimap toHand . normalize
  where
    normalize t = case t of
      (v, "X") -> (v, "A")
      (v, "Y") -> (v, "B")
      (v, "Z") -> (v, "C")
    toHand x = case x of
      "A" -> A
      "B" -> B
      "C" -> C
