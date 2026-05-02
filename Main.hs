module Main where

saludar :: String -> String
saludar nombre = "Hola, " ++ nombre ++ "! Bienvenido a Haskell."

main :: IO ()
main = do
  lista <- solicitarListaEnteros
  let resultado = sumaCuadradosLista lista
  putStrLn $ "La suma de los cuadrados de la lista es: " ++ show resultado
  lista <- solicitarListaEnteros
  let cantPares = cuentaPares lista
  putStrLn $ "En la lista hay " ++ show cantPares ++ " enteros pares."


solicitarListaEnteros :: IO [Int]
solicitarListaEnteros = do
  putStrLn "Introduce una lista de enteros separados por espacios:"
  input <- getLine
  let lista = map read (words input) :: [Int]
  return lista 


sumaCuadradosLista :: [Int] -> Int
sumaCuadradosLista lista = sum[x^2 | x <- lista]


cuentaPares :: [Int] -> Int
cuentaPares lista = length listaPares
  where listaPares = filter even lista
