module Interpreter
    ( command
    , clear
    , welcome
    , add
    ) where

command :: IO ()
command = do
  line <- getLine
  putStrLn ("#" ++ line ++ "")

welcome :: String -> IO ()
welcome version = putStrLn ("andromeda " ++ version)

clear :: IO()
clear = putStr "\ESC[2J"

add :: Integer -> Integer -> IO()
add x y = putStrLn(show (x + y))
