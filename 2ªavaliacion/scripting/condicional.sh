#!/bin/bash

num1=2
num2=2

if [ $num1 -ne $num2 ]
then
    echo "Son números diferentes"
else
    echo "Son números iguais"
fi

#Operadores

notaExamen=6

if [ $notaExamen -ge 5 ] && [ $notaExamen -le 10 ]
then   
    echo "Tes mais de un 5. Estás aprobado. Tes un $notaExamen"
else   
    echo "Estás suspendo. tes un $notaExamen"
fi
