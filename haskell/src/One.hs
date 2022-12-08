module One
    ( one
    , one'
    ) where

import           Data.List       (sort)
import           Data.List.Split (splitWhen)

one :: String -> Int
one =  maximum . map (sum . map (read :: String -> Int)) . splitWhen (== "") . lines

one' :: String -> Int
one' = sum . take 3 . reverse . sort . map (sum . map (read :: String -> Int)) . splitWhen (== "") . lines