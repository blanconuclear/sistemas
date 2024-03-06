#!/bin/bash

function crearcapeta {
    mkdir proba
    echo "carpeta creada"
}

function crearArchivo {
    cd ./proba
    touch proba.txt
    echo "archivo creado"
}

function escribirArchivo {
    read -p "Dime la frase a escribir: " frase
    echo "$frase" > ./proba/proba.txt
}

function sumar() {
    resultado=$(($1 + $2))
    echo "El resultado de la suma: $resultado"
}

menu="esto simula un menú"

echo "$menu"

read -p "Dime una opción: " opcion

while [ "$opcion" -ne "5" ]; do 
    case $opcion in
    "1")
        crearcapeta
        ;;
    "2")
        crearArchivo
        ;;
    "3")
        escribirArchivo
        ;;
    "4")
      read -p "Ingresa o primer número: " num1
      read -p "Ingresa o segundo número: " num2
         sumar $num1 $num2
        ;;
    *)
        echo "Número incorrecto"
    esac

    read -p "Dime una opción: " opcion
    clear
done
