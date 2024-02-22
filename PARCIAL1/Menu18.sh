#!/bin/bash
# Menú en Bash para ejecutar los 18 scripts

while true; do
    clear
    echo "Menú de Scripts"
    echo "----------------"
    echo "1. Hola Mundo"
    echo "2. Variables"
    echo "3. Operaciones Aritméticas y Lógicas"
    echo "4. Condicionales"
    echo "5. Iteración For Simple"
    echo "6. Iteración For con Array"
    echo "7. Iteración For con Resultado de Comando"
    echo "8. Iteración For con Grupo de Ficheros"
    echo "9. Iteración For Clásico con Índice"
    echo "10. Estructura While"
    echo "11. Estructura Until"
    echo "12. Bucle For Simple"
    echo "13. Bucle For para Recorrer un Array"
    echo "14. Bucle For con Resultado de Comando"
    echo "15. Bucle For con Grupo de Ficheros"
    echo "16. Bucle For Clásico con Índice"
    echo "17. Estructura While"
    echo "18. Estructura Until"
    echo "0. Salir"
    
    read -p "Seleccione un script para ejecutar (0 para salir): " opcion

    case $opcion in
        1) ./script1.sh ;;
        2) ./script2.sh ;;
        3) ./script3.sh ;;
        4) ./script4.sh ;;
        5) ./script5.sh ;;
        6) ./script6.sh ;;
        7) ./script7.sh ;;
        8) ./script8.sh ;;
        9) ./script9.sh ;;
        10) ./script10.sh ;;
        11) ./script11.sh ;;
        12) ./script12.sh ;;
        13) ./script13.sh ;;
        14) ./script14.sh ;;
        15) ./script15.sh ;;
        16) ./script16.sh ;;
        17) ./script17.sh ;;
        18) ./script18.sh ;;
        0) echo "Saliendo del Menú"; exit ;;
        *) echo "Opción no válida. Intente de nuevo." ;;
    esac

    read -p "Presione Enter para continuar..."
done
