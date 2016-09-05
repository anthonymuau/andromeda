module Interpreter
    ( command
    , clearScreen
    , welcome
    ) where

import Configure

command :: IO ()
command = do
  line <- getLine
  putStrLn ("#" ++ line ++ "")

welcome :: IO ()
welcome = do
  putStrLn ("andromeda " ++ version)

clearScreen :: IO()
clearScreen = putStr "\ESC[2J"
