#!/bin/bash


#Este é un comentario.

saludo="Hola mundo"
autorizado="si"

echo $saludo;

#Para facer unha operación
echo $((1+1))

#Condicional
if [ $autorizado == "si" ]; then
    echo "Podo pasar"
else
    echo "Non pode pasar"
fi


read -p "¿dime unha opción?" numero

case $numero in
    "1")
        ls -la
        echo "busqueda finalizada"
        ;;
    "2")
        mkdir verder
        echo "carpeta creada"
        ;;
esac