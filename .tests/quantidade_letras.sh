#!/bin/bash

if [[ ! -f ./mensagens.txt ]]; then

	echo -e "\nERRO: Arquivo mensagens.txt nao existe!"
	exit 1
fi

if [[ ! -s ./mensagens.txt ]]; then

	echo -e "\nERRO: Arquivo mensagens.txt vazio!"
	exit 2
	
fi

if [[ ! -f ./letras.txt ]]; then

	echo -e "\nERRO: Arquivos letras.txt nao existe!"
	exit 3
	
fi

if [[ ! -s ./letras.txt ]]; then

	echo -e "\nERRO: Arquivos letras.txt vazio!"
	exit 3
	
fi

expected=`grep -o 'a' ./mensagens.txt | wc -l | cut -f1 -d" "`

# echo -e "\nExpected: $expected"

real=`grep -E [0-9]+ ./letras.txt`

# echo -e "\nReturned: $real"

if [[ ${real} -eq ${expected} ]]; then 

	exit 0

else 

	echo -e "\nERRO: Quantidade esperada ${expected}, porém foi retornado ${real}!"

	exit 1
	
fi

