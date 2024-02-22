#!/bin/bash
crear_arbol() {
    echo "Creando árbol de directorios..."
    mkdir -p directorio1/subdirectorio1
    touch directorio1/archivo1.txt
    mkdir -p directorio2/subdirectorio2
    touch directorio2/archivo2.txt
    echo "Árbol de directorios creado."
}

hola_mundo() {
    echo "Hola, mundo!"
}

saludo_con_variables() {
    nombre="Usuario"
    echo "¡Hola, $nombre!"
}

# Menú principal
while true; do
    echo "=== Menú ==="
    echo "1. Crear árbol de directorios"
    echo "2. Hola Mundo"
    echo "3. Saludo con variables"
    echo "4. Salir"

    read -p "Seleccione una opción (1-4): " opcion

    case $opcion in
        1)
            crear_arbol
            ;;
        2)
            hola_mundo
            ;;
        3)
            saludo_con_variables
            ;;
        4)
            echo "Saliendo del menú. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, seleccione una opción válida (1-4)."
            ;;
    esac
done
