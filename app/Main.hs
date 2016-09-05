module Main where

import Interpreter

import System.IO

main :: IO ()
main = do
  clearScreen
  welcome
  hFlush stdout
  command
