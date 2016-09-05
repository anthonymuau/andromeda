module Main where

import Interpreter
import Welcome

import System.IO

main :: IO ()
main = do
  clearScreen
  system
  hFlush stdout
  command
