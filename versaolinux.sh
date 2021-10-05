#!/usr/bin/env bash

#==variaveis========#

diretorio=/home/Downloads #esta é uma variavel global funciona em todo app



#======funçoes========#

function versao_linux() {
   local versao=$(cat /etc/os-release) #variavel local so funciona no bloco  da funçao
    echo "A versao do linux é $versao "
} 

versao_linux  #chamando a funçao 




