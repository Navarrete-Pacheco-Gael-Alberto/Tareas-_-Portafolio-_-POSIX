#!/bin/bash

archivo=$1

if [ -z "$archivo" ]; then
    echo "Uso: $0 <nombre_archivo>"
    exit 1
fi

if [ ! -e "$archivo" ]; then
    echo "El archivo '$archivo' no existe."
    exit 1
fi

echo "Nombre: $archivo"

tipo_archivo=$(file -b "$archivo")
echo "Tipo: $tipo_archivo"

fecha_creacion=$(stat -c "%x" "$archivo")
echo "Fecha de creacion: $fecha_creacion"

tamano_bytes=$(stat -c "%s" "$archivo")
echo "Tamaño en bytes: $tamano_bytes bytes"

permisos=$(stat -c "%A" "$archivo")
echo -e "Permisos:\n\tUser($(stat -c "%U" "$archivo")): $permisos"
echo -e "\tGroup($(stat -c "%G" "$archivo")): $permisos"
echo -e "\tOthers: $permisos"
