module ValidarCPF where

import Data.Char

calcula9 :: ([Char], Int, Int) -> Int
calcula9([],n,aux) = mod aux 11
calcula9(c:r,n,aux) = calcula9(r,n-1,aux + (digitToInt c * n))

digito :: (Int) -> Int
digito(n)
 | n == 0 || n == 1 = 0
 | otherwise = 11 - n

verCpfD1 :: (String) -> Bool
verCpfD1(l)
 | digito(calcula9(take 9 l, 10, 0)) == digitToInt (l !! 9) = True
 | otherwise = False

verCpfD2 :: (String) -> Bool
verCpfD2(l)
 | digito(calcula9(take 9 (tail l), 10, 0)) == digitToInt (l !! 10) = True
 | otherwise = False

verificaCPF :: (String) -> Bool
verificaCPF("00000000000") = False
verificaCPF("11111111111") = False
verificaCPF("22222222222") = False
verificaCPF("33333333333") = False
verificaCPF("44444444444") = False
verificaCPF("55555555555") = False
verificaCPF("66666666666") = False
verificaCPF("77777777777") = False
verificaCPF("88888888888") = False
verificaCPF("99999999999") = False
verificaCPF(cpf) = length cpf == 11 && verCpfD1(cpf) && verCpfD2(cpf)

principal :: (Integer) -> IO()
principal(cpf)
 | verificaCPF(show cpf) = putStr "CPF Valido!\n"
 | otherwise = putStr "CPF Não é Valido!\n"