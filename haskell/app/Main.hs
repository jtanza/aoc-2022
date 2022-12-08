module Main (main) where

import Lib ( printResult, toTuples )
import One ( one, one' )
import Two ( two )
import Three (three)
import Four (four)

main :: IO ()
main = do
  oneInput <- readFile "input/one.txt"
  Lib.printResult "1" "1" (One.one oneInput)
  Lib.printResult "1" "2" (One.one' oneInput)
  twoInput <- readFile "input/two.txt"
  Lib.printResult "2" "1" (Two.two (Lib.toTuples twoInput))
  threeInput <- readFile "input/three.txt"
  Lib.printResult "3" "1" (Three.three threeInput)
  fourInput <- readFile "input/four.txt"
  Lib.printResult "4" "1" (Four.four fourInput)
  fiveInput <- readFile "input/five.txt"
  print (lines fiveInput)
