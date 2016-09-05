module Interpreter
    ( command
    , clearScreen
    , welcome
    , add
    ) where

import Configure

command :: IO ()
command = do
  line <- getLine
  putStrLn ("#" ++ line ++ "")

welcome :: IO ()
welcome = putStrLn ("andromeda " ++ version)

clearScreen :: IO()
clearScreen = putStr "\ESC[2J"

add :: Integer -> Integer -> IO()
add x y = putStrLn(show (x + y))
