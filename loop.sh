#!/usr/bin/env bash

# trabalhando com o loop while

#while [[ "1" = "1" ]]; do
#	echo "olha só, estou infinito"
#	echo "aperte CTRL + C para parar"
#	sleep 1s
	
#done

val="0"
while [[ "$val" -ne "5" ]]; do
	val=$(($val+1))
	echo "o valor é: $val"	
done
