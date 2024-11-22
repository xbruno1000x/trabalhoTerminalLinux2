#!/bin/bash

for index in $(seq 1 3); do

	if [[ ! -f mensagem${index}.txt ]]; then 
	
		echo "ERRO: mensagem${index}.txt nao criado!"
					
		exit ${index}
		
	fi
	
	if [[ ! -s mensagem${index}.txt ]]; then 
	
		echo "ERRO: mensagem${index}.txt eh um arquivo vazio!"
	
		exit $(( index*10 ))
		
	fi	

done

# arquivos existem e nao sao vazios

exit 0
