#!/bin/bash

echo "Atualizando lista de pacotes"

sudo apt-get update

echo "Atualizando servidor"

sudo apt-get upgrade -y

echo "Instalando apache2"

sudo apt install apache2 -y

echo "Istalando unzip"

sudo apt install unzip -y

echo "Baixando a aplicacao"

sudo wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Entrando no diretorio"

cd /tmp

echo "Descompactando" 

unzip main.zip

echo "Entrando no diretorio"

cd linux-site-dio-main

echo "Copiando arquivos para diretorio do apache"

cp -R * /var/www/html/




