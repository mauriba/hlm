module Vector where

import Exceptions
import Types

abs :: Vector -> Float
abs = sqrt . sum . map (^ 2)

dot :: Vector -> Vector -> Float
dot [] [] = 0
dot a b
  | length a /= length b = throw (DimensionMismatch (length a) (length b))
  | otherwise = head a * head b + dot (tail a) (tail b)

cross :: Vector -> Vector -> Vector
cross a b
  | length a /= 3 = throw (DimensionMismatch 3 (length a))
  | length b /= 3 = throw (DimensionMismatch 3 (length b))
  | otherwise = [a1 * b2 - a2 * b1, a2 * b0 - a0 * b2, a0 * b1 - a1 * b0]
  where
    [a0, a1, a2] = a
    [b0, b1, b2] = b
