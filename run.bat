#!/bin/bash
BLUE='\033[1;34m'
SC='\033[0m'
GREEN='\033[1;33m'

clear
read -p "$(echo -e $BLUE"Deseja instalar pacotes (s/n)? "$SC)" sn
case $sn in
   [Ss]*)
   clear
   echo -e "${GREEN}Instalando OPENSSH...${SC}"
   echo -e
   sleep 3s
   pkg install openssh
   clear
   echo -e "${GREEN}Instalando DROPBEAR...${SC}"
   echo -e
   sleep 3s
   pkg install dropbear
   clear
   ;;
   [Nn]*)
   clear
   ;;
read -p "Digite seu ip: " ip
sleep 2s
echo -e
read -p "Digite seu usuário: " user
sleep 2s
echo -e
read -p "Digite sua porta: " port
sleep 2s
clear
echo -e "\033[0;34mIniciando Servidor SSH...\033[0m"
sleep 2s
ssh -p $port $user@$i

esac
