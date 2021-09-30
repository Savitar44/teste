#!/bin/bash
clear
echo -e "\033[0;34mDigite seu ip: \033[0m"
read ip
sleep 2s
echo -e
echo -e "\033[0;34mDigite sua porta: \033[0m"
read port
sleep 2s
echo -e
echo -e "\033[0;34mDigite seu usuário: \033[0m"
read user
sleep 2s
clear
echo -e "\033[0;32mIniciando Servidor SSH...\033[0m"
sleep 3s
clear
ssh -p $port $user@$ip
clear
echo -e "\033[0;32mParando Servidor...\033[0m"
sleep 2s
clear
echo -e "\033[1;31mRetornando...\033[0m"
sleep 2s
curl -sO https://raw.githubusercontent.com/Savitar44/teste/main/run.sh && chmod 777 run.sh && ./run.sh

