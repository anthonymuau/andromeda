module Main where

import Interpreter
import Configure

import System.IO

main :: IO ()
main = do
  clear
  welcome version
  hFlush stdout
  command
