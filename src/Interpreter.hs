module Interpreter
    ( command
    ) where

command :: IO ()
command = do
  line <- getLine
  putStrLn ("#" ++ line ++ "")
