module Welcome
    ( system
      , clearScreen
    ) where

import Configure

system :: IO ()
system = do
  putStrLn ("andromeda " ++ version)

clearScreen :: IO()
clearScreen = putStr "\ESC[2J"
