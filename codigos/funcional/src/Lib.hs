module Lib
    ( esPar
    ) where

esPar :: Integer -> Bool
esPar numero = mod numero 2 == 0
