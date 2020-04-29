#!/bin/bash

if [ "$1" == "" ]

then 
echo "Ferramenta para scanear um dominio e trazer nomes de hosts ativos, baseado na lista dentro do arquivo dominios.txt"
echo "Uso: ./scaneiadns.sh dominio.com"
echo ""

else
for url in $(cat dominios.txt); 
do 
host $url.$1 | grep "has address"
done 
fi
