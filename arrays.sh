#!/usr/bin/env bash

#sitaxe da array

# nome[0]= "gleison"
# echo "${nome[0]"

#lista array
# nome=(gleison naruto jiraya kakashi lee)

#chamada da lista 

# echo "${nome[@]}"

#array associativa
#chamada tem de usar o declare -a
# declare -a dados   #verificar opçoes em declare -help
# dados[nome]="gleison"
# dados[sobrenome="uzumaki"
# dados[cpf]="xxx-xxx-xxx-xx"

#chamada da associativa

# echo "${dados[nome]}" 
# echo "${dados[sobrenome]"
# echo "${dados[cpf]"


#simbolos  de array

# !(exclamaçao) faz a verificaçao do indice

# #(tralha)

apelidos=( je gle fa na fii)

for i in "${!apelidos[@]}"; do
	echo "vetor $i:${apelidos[$i]}"
done


