#!/usr/bin/env bash

#Variaveis do programa=======
servidor1="icanhazip.com"
servidor2="v4.ifconfig.co"


#testes inicias=======
echo "verificando  se há conexao com internet..."
if ! wget -q --spider www.google.com; then
	echo "necessita de internet"
	exit 1	
fi
#=======================
exec_=$(if ! curl -s "$servidor1"; then curl -s "$servidor2"; fi )
echo "O seu ip externo é: $exec_"
