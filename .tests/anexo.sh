#!/bin/bash

TEST_FILE="./mensagens_antiga.txt"
CHECK_FILE="./mensagens.txt"

if [[ ! -f "${TEST_FILE}" ]]; then

	echo "ERRO: ${TEST_FILE} nao existe!"

	exit 1;

fi

if [[ ! -s "${TEST_FILE}" ]]; then

	echo "ERRO: ${TEST_FILE} vazio!"

	exit 2;

fi

if [[ ! -f "${CHECK_FILE}" ]]; then

	echo "ERRO: ${CHECK_FILE} nao existe!"

	exit 3;

fi

if [[ ! -s "${CHECK_FILE}" ]]; then

	echo "ERRO: ${CHECK_FILE} vazio!"

	exit 4;

fi

nlines_test=`wc -l $TEST_FILE | cut -f1 -d " "`

# echo $nlines_test

nlines_check=`wc -l $CHECK_FILE | cut -f1 -d " "`

# echo $nlines_check

if [[ $nlines_test -le $nlines_check ]]; then 
	exit 0
else
	echo -e "\nERRO: Esperado ${nlines_check}, porém retornado ${nlines_test}!"
	exit 1
fi

