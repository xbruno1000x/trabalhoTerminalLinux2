#!/bin/bash

ls -R /etc 1> teste_saida.txt 2> teste_erros.txt

if [[ ! -f saida.txt  ]]; then
	echo "saida.txt nao existe!"
	exit 1
fi

if [[ ! -f erros.txt  ]]; then 
	echo "erros.txt nao existe!"
	exit 1
fi



if [[ `diff -q saida.txt teste_saida.txt` != "" ]]; then
	echo "saida.txt nao eh o esperado!"
	exit 1

fi

if [[ `diff -q erros.txt teste_erros.txt` != "" ]]; then
	echo "erros.txt nao eh o esperado!"
	exit 1
	
fi	

exit 0


