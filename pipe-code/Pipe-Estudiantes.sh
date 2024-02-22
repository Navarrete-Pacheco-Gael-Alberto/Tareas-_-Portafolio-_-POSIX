#!/bin/bash

# Definir nombres de alumnos y calificaciones
nombre_alumno1="Arturo"
nombre_alumno2="Jenni"
nombre_alumno3="Luz"
nombre_alumno4="Juan"

nombre_alumno5="Alan"
nombre_alumno6="Alberto"
nombre_alumno7="Miguel"
nombre_alumno8="Carlos"

calificacion_alumno1=90
calificacion_alumno2=80
calificacion_alumno3=85
calificacion_alumno4=99

calificacion_alumno5=15
calificacion_alumno6=30
calificacion_alumno7=20
calificacion_alumno8=40

verificar_calificacion() {
    nombre=$1
    calificacion=$2

    if [ "$calificacion" -ge 50 ]; then
        echo "$nombre - Aprobado con calificación: $calificacion"
    else
        echo "$nombre - Reprobado con calificación: $calificacion"
    fi
}

while true; do
    echo "1. Mostrar aprobados"
    echo "2. Mostrar reprobados"
    echo "3. Salir"

    read -p "Seleccione una opción (1-3): " opcion

    case $opcion in
        1)
            echo "Alumnos que aprobaron: $(verificar_calificacion "$nombre_alumno1" "$calificacion_alumno1") $(verificar_calificacion "$nombre_alumno2" "$calificacion_alumno2") $(verificar_calificacion "$nombre_alumno3" "$calificacion_alumno3") $(verificar_calificacion "$nombre_alumno4" "$calificacion_alumno4")"
            ;;
        2)
            echo "Alumnos que reprobaron: $(verificar_calificacion "$nombre_alumno5" "$calificacion_alumno5") $(verificar_calificacion "$nombre_alumno6" "$calificacion_alumno6") $(verificar_calificacion "$nombre_alumno7" "$calificacion_alumno7") $(verificar_calificacion "$nombre_alumno8" "$calificacion_alumno8")"
            ;;
        3)
            echo "Saliendo del programa."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, seleccione una opción válida (1-3)."
            ;;
    esac
done
