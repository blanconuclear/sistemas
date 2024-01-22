#!/bin/bash

<<COMMENT
Realiza un script no que se lle amose ao usuario actual co que está logeado e, despois,
se lle permita modificar este nome. Será unha modificación “virtual” non se mudará realmente o
usuario de sistema. Deberá amosarse unha mensaxe na que se pida o novo nome. En caso de que o
usuario pulse
enter
quererá dicir que non se muda de usuario e o valor será o mesmo que xa se tiña
gardado.
COMMENT


usuarioConectado=`whoami`

echo Estás conectado como: $usuarioConectado

echo Permitímosche modificar o teu nome. Dinos por cal che gustaría cambiar o actual: $usuarioConectado
read novoNome

if [ $novoNome -z ]
then
    echo "O teu nome segue igual" $usuarioConectado
else
    echo "O teu nome agora é: "$novoNome
fi