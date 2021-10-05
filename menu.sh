#!/usr/bin/env bash

#


echo "#========================#"
echo "1)abrir o brave"    
echo "2)abrir o vim"
echo "3)abrir o nano"
echo "#========================#"
read -p "selecione uma das opçoes: " opcao

if [[ "$opcao" -eq "1" ]]; then
	brave	
elif [[ "$opcao" -eq "2" ]]; then
	vim	
elif [[ "$opcao" -eq "3" ]]; then
	nano
else
	echo "Cara nao existe esta opçao!!"
	
fi
