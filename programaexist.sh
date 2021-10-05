#!/usr/bin/env bash

vermelho="\033[31;1m"
verde="\033[32;1m"
fecha_cor="\033[m"

(($#==0)) && { echo "Nessecita passar o nome de um programa"; exit 1; }

while [[ -n "$1" ]]; do 
	if type -p "$1"; then
		echo -e "${verde} o programa $1 existe${fecha_cor}"
	else
		echo -e "${vermelho} o programa $1 nao	existe${fecha_cor}"
	fi
	 shift
done