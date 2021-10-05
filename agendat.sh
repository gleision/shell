#!/usr/bin/env bash

#id >
#agenda telefonica que puxa informaçao de um db csv
#1armazenar  usuario no db


#======Váriaaveis Globais==========#
db="banco-de-dados.txt"

#======teste inicial======#

[[ ! -e "$db" ]] && > "$db"
(($UID==0)) && { echo "root naoooo!" ; exit 1 ;}

#====funçoes===============#
function adicionar(){
lista=("nome" "ddd" "telefone")
i=1
    for dados in "${lista[@]}"; do
         while [[ -z "${dados[i]}" ]]; do
            read -p "${dados}: " dados[$i]
         done
         ((i++))
    done
echo "Seus dados: ${dados[1]}:${dados[2]}:${dados[3]}"
}




#nenu de  entrada

case $1 in
    -a|--adicionar) adicionar ;; #chamada da funçao adicionar
esac