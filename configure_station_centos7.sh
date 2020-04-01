#Para ser usado no CentOS 7.0
#!/bin/bash

Atualiizar os pacotes do Cent Os
#yum update -y

#Instalar um repositorio que permite instalar aplicativos, entre eles o VLC:
yum -y install http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm

#Instalar suporte ao VirtualBox. Baixar o executável do site.
wget https://www.virtualbox.org/download/oracle_vbox.asc
rpm --import oracle_vbox.asc
wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo

#Instalar o Extension Pack do Virtual Box
wget https://download.virtualbox.org/virtualbox/6.0.14/Oracle_VM_VirtualBox_Extension_Pack-6.0.14.vbox-extpack

mv Oracle_VM_VirtualBox_Ext$ /tmp

#Instlar o nmap, vlc
yum -y install nmap vlc libdvdcss gstreamer{,1}-plugins-ugly gstreamer-plugins-bad-nonfree gstreamer1-plugins-bad-freeworld

#Instalar suporte a leitura e escrita em discos NTFS
yum -y install epel-release ntfs-3g

#Instalar cliente de e-mail
yum -y install thunderbird

#Instalar ADB para conexão com android
yum -y install android-tools

#Baixar e instalar o AnyDesk
wget https://download.anydesk.com/linux/anydesk-5.5.1-1.el7.x86_64.rpm
yum localinstall anydesk-5.5.1-1.el7.x86_64.rpm

#Habilitar o reconhecimento de celular no linux
yum install simple-mtpfs gvfs-mtp kio_mtp libmtp libmtp*

wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

yum localinstall -y google-chrome-stable_current_x86_64.rpm

#Nao esquecer de importar o Extension Packer do Virtual Box. 
#Comando para o virtualbox reconhecer a usb e outros recursos
usermod -a -G vboxusers usuario

#Instalar o Skype
wget https://go.skype.com/skypeforlinux-64.rpm

yum install telnet -y

yum install python-pip python-wheel -y

yum install python34u -y

pip install --upgrade pip

yum install python36

yum install whois -y

yum install curl -y

yum install build-essential curl zlib1g-dev git libfuse-dev vim autoconf automake autopoint libtool pkg-config flex byacc libcrypto++-dev testdisk tesseract-ocr tesseract-ocr-por tesseract-ocr-osd mplayer libparse-win32registry-perl libesedb-utils imagemagick libmsiecf-utils libafflib-dev libewf-dev libvmdk-dev libxtst6 libxi6 libpff1 openjfx -y

yum install aircrack-ng -y

yum install wireshark -y

#Pacote com ferramentas de ataque (arpspoof, dnspoof, etc)
yum install dsniff -y
echo 1 > /proc/sys/net/ipv4/ip_forward
sudo yum install -y openssl-devel
yum install openvpn -y
yum install nikto -y
