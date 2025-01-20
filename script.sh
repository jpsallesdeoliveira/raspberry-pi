#!/bin/bash

# Define o nome do arquivo
arquivo="pid.txt"

while true; do
  # Verifica se o arquivo existe
  if [ -f "$arquivo" ]; then
    pid=$(cat "$arquivo") 
  else
    pid=""
  fi

  # Verifica se o pid existe
  if ps -p "$pid" > /dev/null 2>&1 && ps -p "$pid" -o comm | grep -q "python3"; then
    echo "shell  -> 1: It is alive"
  else
    echo "shell  -> 1: It is dead"
    python3 script.py &
  fi

  sleep 1  # Aguarda 1 segundo para não sobrecarregar o sistema

done
