#!/bin/bash
BLUE='\033[0;34m'
RED='\033[1;31m'
GREEN='\033[0;32m'
SC='\033[0m'

clear
echo -e "${BLUE}Digite seu ip: ${SC}"
read ip
sleep 2s
echo -e
echo -e "${BLUE}Digite sua porta: ${SC}"
read port
sleep 2s
echo -e
echo -e "${BLUE}Digite seu usuário: ${SC}"
read user
sleep 2s
clear
echo -e "${GREEN}Iniciando Servidor SSH...${SC}"
sleep 3s
clear
ssh -p $port $user@$ip
clear
echo -e "${GREEN}Parando Servidor...${SC}"
sleep 2s
clear
echo -e "${RED}Retornando...${SC}"
sleep 2s
curl -sO https://raw.githubusercontent.com/Savitar44/teste/main/run.sh && chmod 777 run.sh && ./run.sh

