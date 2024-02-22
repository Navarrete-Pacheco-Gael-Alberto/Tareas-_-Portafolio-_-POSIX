#!/bin/bash

# 1. Cambiarse al directorio raíz
cd /

# 2. Cambiarse al directorio $HOME del usuario actual
cd ~

# 3. Mostrar el directorio actual
pwd

# 4. Listar el directorio actual
ls

# 5. Crear el archivo test.txt
touch test.txt

# 6. Copiar test.txt a test2.txt
cp test.txt test2.txt

# 7. Mover test2.txt a test3.txt
mv test2.txt test3.txt

# 8. Eliminar el archivo test2.txt
rm test2.txt

# 9. Crear el directorio prueba
mkdir prueba

# 10. Mover el archivo test3.txt al directorio prueba
mv test3.txt prueba/

# 11. Copiar el directorio prueba a prueba2
cp -r prueba prueba2

# 12. Eliminar el directorio prueba
rm -r prueba

# 13. Mover test.txt al directorio prueba2
mv test.txt prueba2/

# 14. Cambiarse al directorio prueba2
cd prueba2

# 15. Editar el archivo test3.txt, usando el editor vi y agregarle: “Hola”
echo "Hola " > test3.txt

# 16. Editar el archivo test4.txt, usando el editor vi y agregarle: “Mundo”
echo "Mundo" > test4.txt

# 17. Concatenar test3.txt y test4.txt en el archivo test5.txt
cat test3.txt test4.txt > test5.txt

# 18. Limpiar la pantalla
clear

# 19. Verificar quién es el usuario actual
whoami

# 20. Mostrar el contenido del archivo test3.txt
cat test3.txt

# 21. Mostrar la ayuda del comando netstat
netstat --help
