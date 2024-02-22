#!/bin/bash
# Menú en Bash para ejecutar los 18 scripts

whiletrue; do
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
        1) 
            echo "Ejecutando Script 1: Hola Mundo"
            # Contenido del Script 1
            echo "Hola Mundo"
            ;;
        2) 
            echo "Ejecutando Script 2: Variables"
            # Contenido del Script 2
            MI_NOMBRE="John"
            echo "Mi nombre es $MI_NOMBRE"
            ;;
        3) 
            echo "Ejecutando Script 3: Operaciones Aritméticas y Lógicas"
            # Contenido del Script 3
            NUM1=10
            NUM2=5
            SUMA=$((NUM1 + NUM2))
            RESTA=$((NUM1 - NUM2))
            MULTIPLICACION=$((NUM1 * NUM2))
            DIVISION=$((NUM1 / NUM2))
            echo "Suma: $SUMA"
            echo "Resta: $RESTA"
            echo "Multiplicación: $MULTIPLICACION"
            echo "División: $DIVISION"
            ;;
        4) 
            echo "Ejecutando Script 4: Condicionales"
            # Contenido del Script 4
            VARIABLE=45
            if [ ${VARIABLE} -gt 0 ]; then
                echo "${VARIABLE} es mayor que 0"
            fi
            ;;
        5) 
            echo "Ejecutando Script 5: Iteración For Simple"
            # Contenido del Script 5
            echo "FOR simple: "
            for i in a b c d e f g h i
            do
                echo "letra: $i"
            done
            ;;
        6) 
            echo "Ejecutando Script 6: Iteración For con Array"
            # Contenido del Script 6
            NOMBRES="Iñigo Sten Asier Pello Roberto"
            echo "FOR simple para recorrer un array: "
            echo "Participantes en la 4party: "
            for i in ${NOMBRES}
            do
                echo ${i}
            done
            ;;
        7) 
            echo "Ejecutando Script 7: Iteración For con Resultado de Comando"
            # Contenido del Script 7
            echo "FOR con el resultado de un comando"
            for i in `ls`
            do
                echo ${i}
            done
            ;;
        8) 
            echo "Ejecutando Script 8: Iteración For con Grupo de Ficheros"
            # Contenido del Script 8
            echo "FOR con ficheros"
            for i in *.sh
            do
                ls -lh ${i}
            done
            ;;
        9) 
            echo "Ejecutando Script 9: Iteración For Clásico con Índice"
            # Contenido del Script 9
            echo "FOR clásico "
            for (( cont=0 ; ${cont} < 10 ; cont=`expr $cont + 1` ))
            do
                echo "Ahora valgo> ${cont}"
            done
            ;;
        10) 
            echo "Ejecutando Script 10: Estructura While"
            # Contenido del Script 10
            echo "WHILE en marcha"
            cont=0
            while (test ${cont} -lt 100)
            do
                cont=`expr $cont + 10`
                echo "Valor del contador: ${cont}"
            done
            echo "Valor final del contador: ${cont}"
            ;;
        11) 
            echo "Ejecutando Script 11: Estructura Until"
            # Contenido del Script 11
            echo "Estructura until"
            cont=15
            until (test ${cont} -lt 0)
            do
                cont=`expr $cont - 1`
                echo "Valor del contador: ${cont}"
            done
            echo "Valor final del contador: ${cont}"
            ;;
        12) 
            echo "Ejecutando Script 12: Bucle For Simple"
            # Contenido del Script 12
            echo "FOR simple: "
            for i in a b c d e f g h i
            do
                echo "letra: $i"
            done
            ;;
        13) 
            echo "Ejecutando Script 13: Bucle For para Recorrer un Array"
            # Contenido del Script 13
            NOMBRES="Iñigo Sten Asier Pello Roberto"
            echo "FOR simple para recorrer un array: "
            echo "Participantes en la 4party: "
            for i in ${NOMBRES}
            do
                echo ${i}
            done
            ;;
        14) 
            echo "Ejecutando Script 14: Bucle For con Resultado de Comando"
            # Contenido del Script 14
            echo "FOR con el resultado de un comando"
            for i in `ls`
            do
                echo ${i}
            done
            ;;
        15) 
            echo "Ejecutando Script 15: Bucle For con Grupo de Ficheros"
            # Contenido del Script 15
            echo "FOR con ficheros"
            for i in *.sh
            do
                ls -lh ${i}
            done
            ;;
        16) 
            echo "Ejecutando Script 16: Bucle For Clásico con Índice"
            # Contenido del Script 16
            echo "FOR clásico "
            for (( cont=0 ; ${cont} < 10 ; cont=`expr $cont + 1` ))
            do
                echo "Ahora valgo> ${cont}"
            done
            ;;
        17) 
            echo "Ejecutando Script 17: Estructura While"
            # Contenido del Script 17
            echo "WHILE en marcha"
            cont=0
            while (test ${cont} -lt 100)
            do
                cont=`expr $cont + 10`
                echo "Valor del contador: ${cont}"
            done
            echo "Valor final del contador: ${cont}"
            ;;
        18) 
            echo "Ejecutando Script 18: Estructura Until"
            # Contenido del Script 18
            echo "Estructura until"
            cont=15
            until (test ${cont} -lt 0)
            do
                cont=`expr $cont - 1`
                echo "Valor del contador: ${cont}"
            done
            echo "Valor final del contador: ${cont}"
            ;;
        0) 
            echo "Saliendo del Menú"
            exit
            ;;
        *) 
