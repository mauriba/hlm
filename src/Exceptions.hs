{-# LANGUAGE GADTs #-}
module Exceptions where

import Control.Exception (Exception)
import qualified Control.Exception as E

-- Re-export `throw` as a top-level function
throw :: Exception e => e -> a
throw = E.throw

data DimensionMismatch = DimensionMismatch Int Int
instance Show DimensionMismatch where
  show (DimensionMismatch len1 len2) =
    "Dimension mismatch: Given dimensions: " ++ show len1 ++ " and " ++ show len2
instance Exception DimensionMismatch

data ParameterException where
  ParameterException :: String -> ParameterException
  deriving (Show)
instance Exception ParameterException
