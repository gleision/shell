#!/usr/bin/env bash

# comando test
#[[ ]] comando test, oteste fica entre os 2 colchetes


# -lt(less then ou  menor que) [[ "10" -lt "5" ]] 

# -le (less equal ou menor ou igual) [[ "10" -le "5" ]]

# -gt (greater then ou maior que) [[ "10" -gt "5" ]]

#-ge (greater equal ou maior ou igual) [[ "10" -ge "5" ]]

# -eq (equal ou igual) [[ "10" -eq "5" ]]

# -ne (not equal ou nao igual) [[ "10" -ne "5" ]]

read -p "digite sua velocidade" velocidade 

[[ "$velocidade" -ge "80" ]] && [[ "$velocidade" -le "85" ]] \
 &&  echo "voce esta no limite,cuidado"

 [[ "$velocidade" -gt "86" ]] \
 && echo "flash ,se dano....MULTA"

 [[ "$velocidade" -lt "80" ]] \
 && echo "voce é uma tartaruga carai"


