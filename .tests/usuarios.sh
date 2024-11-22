#!/bin/bash

cut -f1 -d":" /etc/passwd > teste_usuarios.txt 


if [[ ! -f usuarios.txt ]]; then
	echo "usuarios.txt nao existe!"
	exit 1
fi


if [[  `diff -q teste_usuarios.txt usuarios.txt` == "" ]]; then

	exit 0

else

	exit 1

fi
