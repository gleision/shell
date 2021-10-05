#!/usr/bin/env bash

source login_senha.config
dados #funçao externa

#====funçoes=======

function login(){
	total="1"
	while true; do
		read -p "login" _login
		read -s "password" _pass

		if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq  "$password" ]] ; then
			echo "login correto..carregando usuario"
			sleep 2s
			clear
			sleep 1s
			echo "logado.."
			clear
	break #parando o loop
		else 
			echo "login ou senha incorretos"
	let total++
			if  [[ "$total" -eq "4" ]]; then
					exit 1
			fi	
		fi
	done
}


function menu() {

PS3="escolha uma opçao : "
select opcao in "nvim" "brave" "emacs"  "sair"; do
		case $REPLY  in
			1)
				[[ $(type -p nvim) ]] || { echo "nvim nao esta instalado."; exit 1 ; }
				nvim
				;; 

			2)
				[[ $(type -p brave) ]] || { echo "brave nao esta instalado."; exit 1 ; } 
				brave
				;;
			3)
				[[ $(type -p emacs) ]] || { echo "emacs nao esta
				instalado."; exit 1 ; }
				emacs
				;;

			4) exit 0 ;; 
			*) echo "esta opçao nao existe" ;;
		esac
done
}
#=====================



login


menu
