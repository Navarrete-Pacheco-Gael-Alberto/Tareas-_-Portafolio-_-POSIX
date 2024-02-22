#!/bin/bash

if [ -z "$1" ]; then
    echo "Por favor, proporciona el nombre del archivo como argumento."
    exit 1
fi

file_info=$(ls -al "$1" 2>/dev/null)

if [ $? -ne 0 ]; then
    echo "El archivo $1 no existe."
    exit 1
fi

permissions=$(echo "$file_info" | awk '{print $1}')
user=$(echo "$file_info" | awk '{print $3}')
group=$(echo "$file_info" | awk '{print $4}')
size=$(echo "$file_info" | awk '{print $5}')
date_created=$(echo "$file_info" | awk '{print $6, $7, $8}')
file_name=$(echo "$file_info" | awk '{print $9}')

convert_permissions() {
    local perm=$1
    case $perm in
        "r") echo "Lectura" ;;
        "w") echo "Escritura" ;;
        "x") echo "Ejecucion" ;;
        *) echo "Desconocido" ;;
    esac
}

echo "Nombre: $file_name"
echo "Tipo: $(if [ -d "$1" ]; then echo "Directorio"; else echo "Archivo"; fi)"
echo "Fecha de creacion: $date_created"
echo "Tamaño en bytes: $size bytes"
echo "Permisos:"
echo "User($user): $(convert_permissions ${permissions:1:1}), $(convert_permissions ${permissions:2:1}), $(convert_permissions ${permissions:3:1})"
echo "Group($group): $(convert_permissions ${permissions:4:1}), $(convert_permissions ${permissions:5:1}), $(convert_permissions ${permissions:6:1})"
echo "Others: $(convert_permissions ${permissions:7:1}), $(convert_permissions ${permissions:8:1})"
