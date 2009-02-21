module Browse where

import Graphics.UI.GLUT
import Data.Tree

import Render

main :: IO ()
main = do
  (name, _) <- getArgsAndInitialize
  startup
  mainLoop

testTree s = unfoldTree lessers s
    where
      lessers 0 = (0,[])
      lessers n = (n-1, [0..n-1])