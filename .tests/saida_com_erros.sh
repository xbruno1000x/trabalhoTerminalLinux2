#!/bin/bash

ls -R /etc 1> teste_saida_com_erros.txt 2>&1


if [[ ! -f saida_com_erros.txt ]]; then 
	echo "saida_com_erros.txt nao existe!"
	exit 1
fi

if [[ `diff -q saida_com_erros.txt teste_saida_com_erros.txt` != "" ]]; then

	exit 1
	
else 

	exit 0
	
fi


