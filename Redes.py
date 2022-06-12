"""
!/bin/bash
Author: Brendon Guilherme Nunes dos Santos
Support: brendondeeper@gmail.com

"""
import subprocess
import os

nome = input("Para nos conhecermos melhor, informe seu nome: ")
print(f"Seja muito bem-vindo, {nome}")

#Instalação Maquina
print("1 - GATEWAY\n2 - DNS\n3 - WEB")

maquina = int(input(f"{nome},qual máquina você deseja fazer instalação?: "))
print(maquina)

if maquina == 1:
    print(f"Ok {nome}, será feita a requisição da instalação da maquina GATEWAY")
    subprocess.call('sh'' curl -LO ')
if maquina == 2:
    print(f"Ok {nome}, será feita a requisição da instalação da maquina DNS")
    #os.system(./installdns.sh)
if maquina == 3:
    print(f"Ok {nome}, será feita a requisição da instalação da maquina WEB")
    #os.system(./installweb.sh)
else:
    print("Nenhuma solicitação foi requisitada")
    #os.system(exit)
