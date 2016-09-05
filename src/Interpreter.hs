module Interpreter
    ( command
    , clear
    , welcome
    , sendtoTerm
    , add
    ) where

import System.IO

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
process tokens = do
  if tokens == "hello"
  then putStrLn ("Hello back")
  else putStrLn ("#" ++ tokens)
