#!/bin/bash

# 1.
sudo apt install -y fortune

# 2.
fortune > mensagem1.txt
fortune > mensagem2.txt
fortune > mensagem3.txt

# Mostrar o conteúdo dos arquivos no terminal
echo "Conteúdo de mensagem1.txt:"
cat mensagem1.txt
echo "Conteúdo de mensagem2.txt:"
cat mensagem2.txt
echo "Conteúdo de mensagem3.txt:"
cat mensagem3.txt

# 3. 
cat mensagem1.txt mensagem2.txt mensagem3.txt > mensagens.txt
echo "Conteúdo final do arquivo mensagens.txt:"
cat mensagens.txt

# 4. 
cp mensagens.txt mensagens_antiga.txt
fortune >> mensagens.txt

# 5.
wc -l < mensagens.txt > linhas.txt

# 6. 
egrep -o "a" mensagens.txt | wc -l > letras.txt

# 7. 
ls -R /etc > saida.txt 2> erros.txt

# 8. 
ls -R /etc &> saida_com_erros.txt

# 9. 
cut -d':' -f1 /etc/passwd > usuarios.txt

# 10. 
sort usuarios.txt > usuarios_ordenados.txt
