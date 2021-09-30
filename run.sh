#!/bin/bash
clear
echo -e "\033[0;31mDigite seu ip: \033[0m"
read ip
sleep 2s
echo -e
echo -e "\033[0;31mDigite sua porta: \033[0m"
read port
sleep 2s
echo -e
echo -e "\033[0;31mDigite seu usuário: \033[0m"
read user
sleep 2s
clear
echo -e "\033[0;32mIniciando Servidor SSH...\033[0m"
sleep 3s
clear
ssh -p $port $user@$ip
