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
  if null line
    then command
    else do
      putStrLn ("#" ++ line ++ "")
      command

welcome :: String -> IO ()
welcome version = putStrLn ("andromeda " ++ version)

clear :: IO()
clear = putStr "\ESC[2J"

sendtoTerm :: IO()
sendtoTerm = hFlush stdout

add :: Integer -> Integer -> IO()
add x y = putStrLn(show (x + y))
