module Main where

import Interpreter

import System.IO

main :: IO ()
main = do
  clearScreen
  add 1 1
  welcome
  hFlush stdout
  command
