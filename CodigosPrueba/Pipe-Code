#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Por favor, proporciona el nombre del archivo de calificaciones como argumento."
    exit 1
fi

aprobados=$(grep -c '^[0-9]\{1,2\}$' "$1")
reprobados=$(grep -c '^[0-4][0-9]$' "$1")

echo "Número de alumnos que aprobaron: $aprobados"
echo "Número de alumnos que reprobaron: $reprobados"
