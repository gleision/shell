#!/usr/bin/env bash


function status_saida () {
	local dir="$HOME"
  ls "$dir"
  return 5	
}

status_saida
echo "$?"

