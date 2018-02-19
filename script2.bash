#!/bin/bash 
clear 
NOME(){ 
	echo "Digite seu nome: "
	read NOME
egrep='^[a-z]'
		if [[ $NOME =~ $egrep ]]; then 
			echo "Nome valido"
			sleep 2
			EMAIL
		else
			echo "Nome Invalido"
			sleep 2
			NOME
		fi
}	
EMAIL(){
	echo "Digite seu email:"
	read EMAIL 
egrep1='^([a-z1-9_-.])+([.com|.com.br])'
		if [[ $EMAIL =~ $egrep1 ]]; then
			echo "email valido"
			sleep 2 
			TELEFONE	
		else
			echo "email invalido"
			sleep 2
			EMAIL
		fi
}	
TELEFONE(){
	echo "Digite seu telefone:(Formato(99)9999-9999)"
	read TELE
egrep2='^[(][1-9]{2}[)][0-9]{4}+-[0-9]{4}'
		if [[ $TELE =~ $egrep2 ]]; then
			echo "Telefone valido"
			sleep 2 
			RG
		else
			echo "Telefone invalido"
			sleep 2 
			TELEFONE
		fi
}		
RG(){
	echo "Digite seu RG"
	read RGE

egrep3=[0-9]{2}[.][0-9]{3}[.][0-9]{3}[-][0-9]{1,2}
		if [[ $RGE =~ $egrep3 ]]; then
			echo "RG valido"
			sleep 2
			CPF	
		else
			echo "RG invalido"
			sleep 2 
			RG
		fi
}
CPF(){
	echo "Digite seu CPF:"
	read CPFE
egrep4=[0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2}
		if [[ $CPFE =~ $egrep4 ]]; then
			echo "CPF valido"
			sleep 2
			DATA
		else
			echo "CPF invalido"
			sleep 2
			CPF	
		fi
}	
DATA(){
	echo "Digite sua data de nascimento:"
	read DATA1
egrep5=[0-3]{1}[0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}
		if [[ $DATA1 =~ $egrep5 ]]; then
			echo "Data valida"
			sleep 2
			MASK
		else
			echo "Data invalida"
			sleep 2
			DATA
		fi	
}
MASK(){
	echo "Digite a mascara"
	read MASKA
egrep6='(254|252|248|240|224|192|128)(.0){3}$|^255(.255|.254|.252|.248|.240|.224|.192|.128|.0){3}$'

		if [[ $MASKA =~ $egrep6 ]]; then
			echo "Mascara valida"
			sleep 2
			IP
		else
			echo "Mascara invalida"
			sleep 2
			MASK
		fi
}		
IP(){
	echo "Digite o IP"
	read IP1
egrep7='[(10|172|192|168)]'
		if [[ $IP1 =~ $egrep7 ]]; then
			echo "IP valido"
			sleep 2
			echo "Cadastro realizado com sucesso"
		else
			echo "IP invalido"
			sleep 2
			IP
		fi
}
NOME
