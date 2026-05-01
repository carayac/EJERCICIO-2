module Main where

saludar :: String -> String
saludar nombre = "Hola, " ++ nombre ++ "! Bienvenido a Haskell."

main :: IO ()
main = do
  lista <- solicitarListaEnteros
  let resultado = sumaCuadradosLista lista
  putStrLn $ "La suma de los cuadrados de la lista es: " ++ show resultado
  let listaPares = paresMenoresA20
  putStrLn $ "Lista de pares menores a 20: " ++ show listaPares


solicitarListaEnteros :: IO [Int]
solicitarListaEnteros = do
  putStrLn "Introduce una lista de enteros separados por espacios:"
  input <- getLine
  let lista = map read (words input) :: [Int]
  return lista 


sumaCuadradosLista :: [Int] -> Int
sumaCuadradosLista lista = sum[x^2 | x <- lista]

paresMenoresA20 :: [Int]
paresMenoresA20 = [ x | x <- [1..20], even x, x < 20 ]
