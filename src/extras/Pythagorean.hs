module Extras.Pythagorean where

import Exceptions

triple :: Int -> Int -> [Float]
triple m n
  | m <= n = throw (ParameterException "m must be greater than n")
  | otherwise = [fromIntegral (m^2 - n^2), fromIntegral (2 * m * n), fromIntegral (m^2 + n^2)]
