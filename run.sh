#!/bin/bash
clear
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
ssh -p $port $user@$ip
