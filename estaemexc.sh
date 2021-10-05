#!/usr/bin/env bash

# verifica se esta aberto até abrir o programa

programa="irssi"
until ps -e | grep "$programa"; do     
	echo "$programa  nao esta em execuçao..."
	sleep 1s
done

# criar programa que verifica maior valor de entrada
# ..parametros de 1 a 10

# parametros posicionais, e nao deve ser interativo

#por fim imprima o maior valor e o menor

