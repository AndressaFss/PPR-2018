#!/bin/bash

clear

NOME(){
        read -p "Informe o seu nome: " nome
        echo $nome | grep '[A-Za-z]'
        if [ $? == 0 ]; then
        	clear
         	echo "Nome válido!"
         	sleep 2
         	clear
         	EMAIL
	 else
         	echo "Nome inválido!"
         	echo "Digite novamente"
         	sleep 2
         	clear
         	NOME
	fi
}

EMAIL(){
        clear
        read -p "Digite o seu email: " email
        echo $email | grep -E '[.+@.+\..+]'
        if [ $? == 0 ]; then
                clear
                echo "E-mail válido!"
                sleep 2
                clear
                TELEFONE
        else
                echo "E-mail inválido!"
                echo "Digite novamente"
                sleep 2
                clear
                EMAIL
        fi
}

 TELEFONE(){
        echo "Formato do telefone: (xx) xxxx-xxxx"
        sleep 2
        clear
        read -p "Digite seu telefone: " telefone
        echo $telefone | grep -E '^[(][0-9]{2}[)][ ][0-9]{5}+-[0-9]{4}$'
        if [ $? == 0 ]; then
                clear
                echo "Telefone válido!"
                sleep 2
                clear
                RG
        else
                echo "Telefone inválido!"
                echo "Digite novamente"
                sleep 2
                clear
                TELEFONE
	fi
}

RG(){
        echo "Formato do RG: xx.xxx.xxx-x"
        sleep 2
        read -p "Informe seu RG: " rg
        echo $rg | grep -E  '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9]$'
        if [ $? == 0 ]; then
                clear
                echo "RG válido!"
                sleep 2
                clear
                CPF
        else
                echo "RG inválido!"
                echo "Digite novamente"
                sleep 2
                clear
                RG
        fi
}

CPF(){
        echo "Formato do CPF: xxx.xxx.xxx-xx"
        sleep 2
        read -p "Informe seu CPF: " cpf
        echo $cpf | grep -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$'
        if [ $? == 0 ]; then
                clear
                echo "CPF válido!"
                sleep 2
                clear
                DATA
        else
                echo "CPF inválido!"
                echo "Digite novamente"
                sleep 2
                clear
                CPF
	fi
}

DATA(){
        echo "Formato da data: xx/xx/xxxx"
        sleep 2
        read -p "Informe a sua data de nascimento: " data
        echo $data | grep -E '^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$'
        if [ $? == 0 ]; then
                clear
                echo "Data de nascimento válida!"
                sleep 2
                clear
                IP
        else
                echo "Data de nascimento inválida!"
                echo "Digite novamente"
                sleep 2
                clear
                DATA
	fi
}

IP(){
        read -p "Digite seu ip: " ip
        echo $ip | grep -E '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$    '
        if [ $? == 0 ]; then
                clear
                echo "IP válido!"
                sleep 2
                clear
                MASK
        else
                echo "IP inválido!"
                echo "Digite novamente"
                sleep 2
                clear
                IP
        fi
}

MASK(){
        read -p "Digite sua máscara de rede: " mask
        grep $mask /home/vagrant/mascara.txt
        if [ $? == 0 ]; then
                clear
                echo "Máscara válida!"
                sleep 2
                clear
                exit
        else
                echo "Máscara inválida!"
                echo "Digite novamente"
                sleep 2
                clear
                MASK
        fi
}
NOME
----------------------------------------------------------------------------------------------------------------------------------------

mascara.txt

255.255.255.255
255.255.255.254
255.255.255.252
255.255.255.248
255.255.255.240
255.255.255.224
255.255.255.192
255.255.255.128
255.255.255.0
255.255.254.0
255.255.252.0
255.255.248.0
255.255.240.0
255.255.224.0
255.255.192.0
255.255.128.0
255.255.0.0
255.254.0.0
255.252.0.0
255.248.0.0
255.240.0.0
255.224.0.0
255.192.0.0
255.128.0.0
255.0.0.0
254.0.0.0
252.0.0.0
248.0.0.0
240.0.0.0
224.0.0.0
192.0.0.0
128.0.0.0
0.0.0.0
