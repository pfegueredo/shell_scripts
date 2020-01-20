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

#Instlar o nmap, vlc
yum -y install nmap vlc libdvdcss gstreamer{,1}-plugins-ugly gstreamer-plugins-bad-nonfree gstreamer1-plugins-bad-freeworld

#Instalar suporte a leitura e escrita em discos NTFS
yum -y install epel-release ntfs-3g

#Instalar cliente de e-mail
yum -y install thunderbird

#Instalar ADB para conexão com android
yum -y install android-tools
