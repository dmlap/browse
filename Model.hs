module Model where

import Data.Tree

data WindowTree a = Top | WindowTree {
      left :: [(Tree a)],
      up :: WindowTree a,
      right :: [(Tree a)]
}