module Interpreter
    ( command
    , clear
    , welcome
    , sendtoTerm
    ) where

import System.IO
import Data.List.Split

command :: IO ()
command = do
  line <- getLine
  process line
  command

welcome :: String -> IO ()
welcome version = putStrLn ("andromeda " ++ version)

clear :: IO()
clear = putStr "\ESC[2J"

sendtoTerm :: IO()
sendtoTerm = hFlush stdout

process :: String -> IO()
process tokenLine = do
  let tokens = splitOn " " tokenLine
  if tokenLine == "hello"
  then putStrLn ("Hello back")
  else putStrLn ("#" ++ tokenLine)
