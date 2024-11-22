#!/bin/bash

test_file="./teste_qtd_linhas.txt"

if [[ ! -f linhas.txt ]]; then

	echo -e "\nERRO: arquivo linhas.txt nao existe!"

	exit 1
	
fi

if [[ ! -f mensagens.txt ]]; then

	echo -e "\nERRO: arquivo mensagens.txt nao existe!"

	exit 2
	
fi


if [[ ! -s mensagens.txt ]]; then

	echo -e "\nERRO: arquivo mensagens.txt vazio!"

	exit 3
	
fi

wc -l mensagens.txt | cut -f1 -d" " > ${test_file}

nr_esperado=`grep -E -o "[0-9]+" ${test_file}`

nr_obtido=`grep -E -o "[0-9]+" linhas.txt`

if [[ $nr_obtido -eq $nr_esperado ]]; then 

	exit 0

else

	exit 4

fi
