#!/bin/bash

export PATH=$HOME/.cargo/bin:$PATH

if [ $# -eq 0 ]; then
  echo "Uso: $0 <nombre_del_archivo>"
  exit 1
fi

archivo=$1

if [ ! -e "$archivo" ]; then
  echo "El archivo $archivo no existe."
  exit 1
fi

permisos=$(ls -l "$archivo" | cut -d ' ' -f 1)
usuario=$(ls -l "$archivo" | awk '{print $3}')
grupo=$(ls -l "$archivo" | awk '{print $4}')
tamanio=$(ls -l "$archivo" | awk '{print $5}')
fecha=$(ls -l --time=full "$archivo" | awk '{print $6, $7}')

echo "Nombre: $archivo"
echo "Tipo: $(file -b "$archivo" | cut -d ' ' -f 1)"
echo "Fecha de creacion: $fecha"
echo "Tamaño en bytes: $tamanio bytes"
echo "Permisos:"

echo "User($usuario):" $(echo $permisos | cut -c 2-4 | sed 's/\([-r]\)/ Lectura, /g' | sed 's/\([-w]\)/ Escritura, /g' | sed 's/\([-x]\)/ Ejecucion, /g' | sed 's/,$//')
echo "Group($grupo):" $(echo $permisos | cut -c 5-7 | sed 's/\([-r]\)/ Lectura, /g' | sed 's/\([-w]\)/ Escritura, /g' | sed 's/\([-x]\)/ Ejecucion, /g' | sed 's/,$//')
echo "Others:" $(echo $permisos | cut -c 8-10 | sed 's/\([-r]\)/ Lectura, /g' | sed 's/\([-w]\)/ Escritura, /g' | sed 's/\([-x]\)/ Ejecucion, /g' | sed 's/,$//')
