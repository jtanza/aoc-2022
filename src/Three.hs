module Three (three) where

import           Data.Char       (ord)
import           Data.List.Split (chunksOf)
import qualified Data.Set        as Set

three :: String -> Int
three = foldr ((\item acc -> acc + val item) . getDupeItem) 0 . lines
  where
    val str
      | c `elem` ['a'..'z'] = ord c - 96
      | c `elem` ['A'..'Z'] = ord c - 38
      where c = head str

getDupeItem :: String -> String
getDupeItem items =
  Set.elemAt 0 intersection
    where
      split = map (: []) items
      compartments = map Set.fromList $ chunksOf (length split `div` 2) split
      intersection = Set.intersection (head compartments) (compartments !! 1)

