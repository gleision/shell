#!/usr/bin/env bash

#==Váriaveis======

user="gleison"
pass="123"
total="1"

#================

while [[ "$total" -ne "5" ]]; do	 
	read -p "login: " login
	read -p "senha: " senha
	if [[ "$login" = "$user" ]] && [[ "$senha" -eq "$pass" ]]; then
		break
	else
#		total=$(($total+1))  igual ao let 
		let total++
	fi
done

echo "Continuando o programa....."