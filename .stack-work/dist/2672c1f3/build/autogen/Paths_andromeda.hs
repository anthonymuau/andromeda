module Paths_andromeda (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\anthonymuscat\\projects\\andromeda\\.stack-work\\install\\e4874a87\\bin"
libdir     = "C:\\Users\\anthonymuscat\\projects\\andromeda\\.stack-work\\install\\e4874a87\\lib\\x86_64-windows-ghc-7.10.3\\andromeda-0.1.0.0-DmW0wiqZKKy36fBsiE4tcT"
datadir    = "C:\\Users\\anthonymuscat\\projects\\andromeda\\.stack-work\\install\\e4874a87\\share\\x86_64-windows-ghc-7.10.3\\andromeda-0.1.0.0"
libexecdir = "C:\\Users\\anthonymuscat\\projects\\andromeda\\.stack-work\\install\\e4874a87\\libexec"
sysconfdir = "C:\\Users\\anthonymuscat\\projects\\andromeda\\.stack-work\\install\\e4874a87\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "andromeda_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "andromeda_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "andromeda_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "andromeda_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "andromeda_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
