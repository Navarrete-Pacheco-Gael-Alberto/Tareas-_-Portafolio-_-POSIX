#!/bin/bash

# Ir al directorio /Root/Home/user
cd /Root/Home/user

echo "Contenido de /Root/Home/user:"
ls
 "nuevo_directorio"
mkdir nuevo_directorio

cp test.txt nuevo_directorio
 "archivo_renombrado.txt"
mv test2.txt nuevo_directorio/archivo_renombrado.txt

echo "Contenido de /Root/Home/user/nuevo_directorio:"
ls nuevo_directorio

echo "Contenido de /Root/Home/user/nuevo_directorio/archivo_renombrado.txt:"
cat nuevo_directorio/archivo_renombrado.txt
