#!/bin/bash
for palavra in $(cat lista.txt)
do
resposta=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra/)
if [ $resposta == "200" ]
then 
echo "Diretório encontrado: $palavra"
fi
done

