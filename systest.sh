#!/bin/bash


#Teste de sistema/Hardware v1.0
#Centro de Informatica e Tecnologia - M Dias Branco
#Autor: Mayara Gouveia
#Contato: gb8may@gmail.com
#Data: 30/05/18

clear
echo "Deseja obter informacoes sobre o disco rigido? [s/n]"
read resp1
if test $resp1 = 's'
then fdisk -l
fi
echo
echo "Deseja obter informacoes sobre o armazenamento do HD? [s/n]"
read resp2
clear
if test $resp2 = 's'
then df -h
fi
echo
echo "Deseja realizar um teste de superficie no HD? [s/n]"
read resp3
clear
if test $resp3 = 's'
then badblocks -sv -c 1024 /dev/sda
fi
echo
echo "Deseja obter informacoes sobre o uso de memoria RAM e SWAP? [s/n]"
read resp4
clear
if test $resp4 = 's'
then free -m -t
fi

