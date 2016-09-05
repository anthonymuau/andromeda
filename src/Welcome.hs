module Welcome
    ( system
    ) where

import Configure

system :: IO ()
system = do
  putStrLn ("andromeda " ++ version)
