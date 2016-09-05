module Main where

import Interpreter
import Configure

main :: IO ()
main = do
  clear
  welcome version
  sendtoTerm
  command
