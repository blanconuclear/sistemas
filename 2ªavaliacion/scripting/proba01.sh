#!/bin/bash

nome="efren"
idade=33
listar=`ls -l`
echo $((idade+10))

let novaIdade=$idade+10

nova=$((idade+10))



echo O meu nome é $nome
echo A miña idade é $idade
echo $listar
echo $novaIdade
echo E nova $nova



a=ls
echo ‘$a’ # Amosará por pantalla $a
echo “$a” # Amosará por pantalla ls
echo `$a` # Amosará por pantalla o contido do directorio onde nos atopemos
