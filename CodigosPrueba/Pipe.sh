#!/bin/bash

aprobados=0
reprobados=0

verificar_calificacion() {
    if [ "$1" -ge 50 ]; then
        ((aprobados++))
    else
        ((reprobados++))
    fi
}

read -p "Ingrese la calificación del alumno 1: " calificacion_alumno1
read -p "Ingrese la calificación del alumno 2: " calificacion_alumno2
read -p "Ingrese la calificación del alumno 3: " calificacion_alumno3
read -p "Ingrese la calificación del alumno 4: " calificacion_alumno4

verificar_calificacion "$calificacion_alumno1"
verificar_calificacion "$calificacion_alumno2"
verificar_calificacion "$calificacion_alumno3"
verificar_calificacion "$calificacion_alumno4"

echo "Número de alumnos que aprobaron: $aprobados"
echo "Número de alumnos que reprobaron: $reprobados"
