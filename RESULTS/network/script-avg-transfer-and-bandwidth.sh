#!/bin/bash

# Calcula a largura de banda

cat $1 | grep 'sender' | sed -e 's/[[:space:]]\+/:/g' | cut -d ':' -f 7 | paste -s -d + | bc >> total-bandwidth-$2.txt

echo "/30" >> total-bandwidth-$2.txt

cat total-bandwidth-$2.txt | paste -s -d x | sed 's/x//' | bc >> avg-bandwidth-$2.txt

sed -i '2d' total-bandwidth-$2.txt

# Calcula o total transferido

cat $1 | grep 'sender' | sed -e 's/[[:space:]]\+/:/g' | cut -d ':' -f 5 | paste -s -d + | bc >> total-transfer-$2.txt

echo "/30" >> total-transfer-$2.txt

cat total-transfer-$2.txt | paste -s -d x | sed 's/x//' | bc >> avg-transfer-$2.txt

sed -i '2d' total-transfer-$2.txt

