#!/bin/bash
#Author:Brendon Guilherme Nunes dos Santos
#Support: brendondeeper@gmail.com
#Instalação GATEWAY
echo "Atualizando pacotes."
sudo apt update;
sudo apt upgrade -y;
echo "Instalando dependências."
sudo apt install isc-dhcp-server vim iptables iptables-persistent -y;
echo "Removendo arquivos não importantes."
sudo apt autoremove -y;
sudo apt remove nano -y;
echo "Instalando nova versão de /etc/netplan"
sudo cp /etc/netplan/*.yaml backup.yaml;
echo "digite o endereço de ip para a Maquina: "
read ip4
echo "digite o gateway da maquina: "
read gw4
echo "digite a mascara de subrede, (formato cidr): "
read cidr4
echo "digite o dns da maquina: "
read dns4
echo "digite o nome da placa que esta configuração será instalada: "
read board4

##############################################
echo "network:
    version: 2
    renderer: networkd
    ethernets:
        $board4:
            addresses: 
                - $ip4/$cidr4
            nameservers:
                addresses: [$dns4]"
>> *.yaml
