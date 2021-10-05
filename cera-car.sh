#!/usr/bin/env bash

# cera no carro

# verificando  se a sujeira saiu.

#break     = para o loop while prematuramente
# continue = continua o loop do inicio 


while :; do #outra forma da sintaxe
	read -p "sujeira saiu? [s/n] " sujeira
	[[ "$sujeira" = "sim" ]] && break || echo  "ainda temos trabalho a fazer..."
done

echo "beleza , sem sujeira agora ok..!"