#!/usr/bin/env bash

#baixa videos do youtube e converte em audio

# variaveis

#64 ,128k ,256k, 320k
qualidade="320k"

#best,aac,vorbis ,m4a ,opus,mp3
formato_audio="mp3"

#======================

# testes inicias

[[ "$UID" -eq "0" ]] && { echo "Root? nao" ; exit 1 ;}

youtube-dl --embed-tumbnail --audio-quality "$qualidade" --extract-audio "$formato_audio" "$@"

[[ "$?" -eq "1" ]] && {  echo "faltou o link." ; exit ;}

