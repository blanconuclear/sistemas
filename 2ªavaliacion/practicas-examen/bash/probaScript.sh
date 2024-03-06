#!/bin/bash

function crearCarpeta {
    mkdir "$1"
}

function crearFicheiro {
    cd "$1" || exit
    touch "$2"
}

function escribirFrase {
    echo "$1" > "$3"
}

read -p "Dime una opción: " opcion

while [ "$opcion" -ne "5" ]; do

    case $opcion in
    "1")
        read -p "Nombre carpeta: " nombreCarpeta
        crearCarpeta "$nombreCarpeta"
        ;;

    "2")
        read -p "Nombre de archivo: " nombreFichero
        crearFicheiro "$nombreCarpeta" "$nombreFichero"
        ;;

    "3")
        read -p "Escribe la frase: " frase
        escribirFrase "$frase" "$nombreCarpeta" "$nombreFichero"
        ;;
    esac

    read -p "Dime una opción: " opcion
    clear
done
