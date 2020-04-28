if [ "$1" == "" ] 

then

echo "Digite o nome do programa e a rede a ser escaneada."
echo "Exemplo de Uso: $0 10.0.0" 
else

for ip in {1..254}; do ping -c1 $1.$ip | grep "64 bytes" | cut -d " " -f4 | cut -d ":" -f 1; done

fi
