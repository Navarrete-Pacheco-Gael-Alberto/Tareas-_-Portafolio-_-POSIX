#!/bin/bash

verificar_calificacion() {
    if [ "$1" -ge 50 ]; then
        echo "Aprobado con calificación: $1"
    else
        echo "Reprobado con calificación: $1"
    fi
}

while true; do
    echo "1. Mostrar aprobados"
    echo "2. Mostrar reprobados"
    echo "3. Salir"

    read -p "Seleccione una opción (1-3): " opcion

    case $opcion in
        1)
            echo "Alumnos que aprobaron:"
            verificar_calificacion "$calificacion_alumno1"
            verificar_calificacion "$calificacion_alumno2"
            verificar_calificacion "$calificacion_alumno3"
            verificar_calificacion "$calificacion_alumno4"
            ;;
        2)
            echo "Alumnos que reprobaron:"
            verificar_calificacion "$calificacion_alumno1"
            verificar_calificacion "$calificacion_alumno2"
            verificar_calificacion "$calificacion_alumno3"
            verificar_calificacion "$calificacion_alumno4"
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
