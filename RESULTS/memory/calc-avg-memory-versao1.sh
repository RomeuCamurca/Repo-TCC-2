#!/bin/bash

cat $1 | cut -d ':' -f4 >> results-test-memory-t2_large-Integer-Serial-Rd-Wrt.txt    #    -> (f2 em diante, até f10. Notando que f2 se trata dos tamanhos dos arquivos)

sed -i '/Rd/d' results-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt                                             #    -> X = (Read ou Rd/Wrt (Rd)) ou (RAM)

sed -i '/MB/d' results-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt                                                #    -> X = (MB/Sec (MB) ou KB)

sed -i -e 's/=\+//' results-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt                                           #    -> padrão, pois não muda!

sed -i '/^$/d' results-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt                                                #    -> remove linhas em branco.

paste -s -d + results-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt | bc >> total-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt     #    -> soma o total.

echo "/30" >> total-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt

paste -s -d x total-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt | sed 's/x//' | bc >> avg-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt

sed -i '2d' total-test-memory-t2_large-Integer-Serial-Rd_Wrt.txt
