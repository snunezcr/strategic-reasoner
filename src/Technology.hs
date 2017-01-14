-- Technology

-- This module allows representation of a technology
module Technology
  ( Technology(..)
  )
  where

import TechReference
import Data.List(intercalate)

data Technology = Technology
  { techID    :: Int
  , techName  :: String
  , techConv  :: String
  , techDesc  :: String
  , techMatr  :: String
  , techRefs  :: [TechReference]
  }

instance Show Technology where
  show t = "Technology" ++ "\n----------" ++
           "\nID: " ++ show (techID t) ++
           "\nName: " ++ techName t ++
           "\nConvergence area: " ++ techConv t ++
           "\nDescription: " ++ techDesc t ++
           "\nMaturity indicator: " ++ techMatr t ++
           "\n" ++ intercalate "\n" (map show (techRefs t))
