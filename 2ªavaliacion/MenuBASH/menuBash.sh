#!/bin/bash

# Función suma
sumar() {
    resultado=$(($1 + $2))
    echo "O resultado da suma: $resultado"
}

# Función resta
restar() {
    resultado=$(($1 - $2))
    echo "O resultado da resta: $resultado"
}

# Función multiplicar
multiplicar() {
    resultado=$(($1 * $2))
    echo "O resultado da multiplicación: $resultado"
}

# Función dividir
dividir() {
    if [ $2 -eq 0 ]; then
        echo "Error: Non se puede dividir por cero."
    else
        resultado=$(($1 / $2))
        echo "O resultado da división: $resultado"
    fi
}

#Función menú
menu() {
    echo "------ CALCULADORA ------"
    echo "1. Sumar"
    echo "2. Restar"
    echo "3. Multiplicar"
    echo "4. Dividir"
    echo "5. Sair"
    echo "---------------------------"
}


while true; do
    menu

    read -p "Selecciona unha operación (1-5): " opcion

    case $opcion in
        1) 
            read -p "Ingresa o primer número: " num1
            read -p "Ingresa o segundo número: " num2
            sumar $num1 $num2
            ;;
        2) 
            read -p "Ingresa o primer número: " num1
            read -p "Ingresa o segundo número: " num2
            restar $num1 $num2
            ;;
        3) 
            read -p "Ingresa o primer número: " num1
            read -p "Ingresa o segundo número: " num2
            multiplicar $num1 $num2
            ;;
        4) 
            read -p "Ingresa o primer número: " num1
            read -p "Ingresa o segundo número: " num2
            dividir $num1 $num2
            ;;
        5) 
            echo "¡Hasta logo!"
            exit 0
            ;;
        *) 
            echo "Opción non válida. Por favor, selecciona una opción válida."
            ;;
    esac

    read -p "Presiona Enter para continuar..."
done


