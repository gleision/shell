#!/usr/bin/env bash


# verificando se o usuario é root

(($UID == 0)) && { echo "Usuário root,nao!" ; exit 1 ;}

function principal(){
	echo "-----------------------"
	echo "1) '+' somar"
	echo "2) '-' subtraçao"
	echo "3) '/' dividir"
	echo "4) '*' multiplicar"
	echo "5)  sair do programa"
	echo "------------------------"
 	read -p "escolha a opçao:" opcao

 	case "$opcao" in
 		"1") somar 		;;
		"2") subtracao 	;;
		"3") dividir 	;;
		"4") multiplicar;;
		"5") exit 0 	;;
 	esac
}

function somar(){
	read -p "valor 1 : " val_um
	read -p "valor 2 : " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entrar com um número."
		somar
	fi
	echo "$(($val_um + $val_dois))" 
	sleep 2s
	principal #retorna ao inicio

}

function subtracao(){
	read -p "valor 1 : " val_um
	read -p "valor 2 : " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entrar com um número."
		subtracao
	fi
	echo "$(($val_um - $val_dois))" 
	sleep 2s
	principal #retorna ao inicio

}

function dividir(){
	read -p "valor 1 : " val_um
	read -p "valor 2 : " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entrar com um número."
		dividir
	fi
	echo "$(($val_um / $val_dois))" 
	sleep 2s
	principal #retorna ao inicio

	
}

function multiplicar(){

	read -p "valor 1 : " val_um
	read -p "valor 2 : " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entrar com um número."
		multiplicar
	fi
	echo "$(($val_um * $val_dois))" 
	sleep 2s
	principal #retorna ao inicio

	
}

#inicio 

principal