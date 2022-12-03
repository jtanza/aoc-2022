module Main (main) where

import Lib
import One
import Two

main :: IO ()
main = do
  oneInput <- readFile "input/one.txt"
  Lib.printResult "1" "1" (One.one oneInput)
  Lib.printResult "1" "2" (One.one' oneInput)
  twoInput <- readFile "input/two.txt"
  Lib.printResult "2" "1" (Two.two (Lib.toTuples twoInput))
