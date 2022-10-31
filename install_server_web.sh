#!/bin/bash

echo "Atualizar..."
apt update -y
echo "Instalando Apache2..."
apt install apache
echo "Instalando Unzip..."
apt install unzip
cd /tmp
echo "Baixando arquivos..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "Copiando arquivos"
rm /var/www/html/index.html
cp -r /tmp/linux-site-dio-main/* /var/www/html/
echo "Finalizando..."
