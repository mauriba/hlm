import Vector

import Extras.Pythagorean as Pythagorean

main = do
  putStrLn "Vector computations"
  putStrLn "==================="
  let a = [3, 4]
  putStrLn ("Vector a: " ++ show a)
  putStrLn ("abs a: " ++ show (Vector.abs a))
  let b = [1, 2]
  putStrLn ("Vector b: " ++ show b)
  putStrLn ("dot a*b: " ++ show (Vector.dot a b))
  let c = take 2 (Pythagorean.triple 4 3)
  putStrLn ("Pythagorean triple: " ++ show c)
  putStrLn ("abs c: " ++ show (Vector.abs c))
