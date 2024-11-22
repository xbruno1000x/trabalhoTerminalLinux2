#!/bin/bash


for i in $(seq 3); do

	if [[ ! -f mensagem${i}.txt ]]; then
		echo "ERRO: mensagem${i}.txt nao existe!"
		exit ${i}
	fi

	if [[ ! -s mensagem${i}.txt ]]; then
		echo "ERRO: mensagem${i}.txt eh um arquivo vazio!"
		exit $(( i*10 ))
	fi

done

cat mensagem1.txt mensagem2.txt mensagem3.txt > ./teste_concatenacao.txt


if [[ `diff -q ./mensagens_antiga.txt ./teste_concatenacao.txt` == "" ]]; then 

	exit 0

else

	echo "ERRO: arquivos de mensagens nao foram corretamente concatenados!"

	exit 100

fi


