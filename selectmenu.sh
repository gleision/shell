#!/usr/bin/env bash

#comando select  um loop bem util para criar menus
#variavel $REPLY permite trabalhar com numeros
PS3="selecione: " #variavel exclusiva do select para trocar  o caracter de pergunta do menu
select  nome in "gleison" "naruto" "jiraya" "kakashi" "sair"; do
	case "$REPLY" in
		1) echo "esse será o hokage um dia"               ;;
		2) echo "a criança da profecia"			          ;;
		3) echo "ero sennin"					     	  ;;
		4) echo "o ninja  copiador"				          ;;
		5) exit 0									      ;;
		*) echo "esse nome nao existe vc e um patife!!"   ;;
		esac
done