#!/bin/bash
BLUE='\033[0;34m'
RED='\033[1;31m'
GREEN='\033[0;32m'
SC='\033[0m'

clear
read -p "$(echo -e $BLUE"Digite seu ip: "$SC)" ip
sleep 2s
echo -e
read -p "$(echo -e $BLUE"Digite sua porta: "$SC)" port
sleep 2s
echo -e
read -p "$(echo -e $BLUE"Digite seu usuário: "$SC)" user
sleep 2s
clear
echo -e "${GREEN}Iniciando Servidor SSH...${SC}"
sleep 2s
ssh -p $port $user@$ip
clear
read -p "$(echo -e $RED"Deseja desconectar o Servidor SSH (s/n)? "$SC)" sn
   case $sn in
   [Ss]*)
   clear
   exit
   ;;
   [Nn]*)
   curl -sO https://raw.githubusercontent.com/Savitar44/teste/main/run.sh && chmod 777 run.sh && ./run.sh
   ;;
   *) echo -e "${RED}Opção inválida! ${SC}"
   echo -e
   sleep 3s
   echo -e "${RED}Retornando...${SC}"
   sleep 3s
   curl -sO https://raw.githubusercontent.com/Savitar44/teste/main/run.sh && chmod 777 run.sh && ./run.sh

esac
