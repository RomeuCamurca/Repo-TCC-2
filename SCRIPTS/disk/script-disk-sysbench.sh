#!/bin/bash

sudo apt update

sudo apt install sysbench -y

sysbench fileio --file-total-size=16G prepare

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
	echo "------------------------------------ÍNICIO DA EXECUÇÃO $CONTADOR------------------------------------------" >> results-test-disk-sysbench-D2s_v3_standard.txt
        sysbench fileio --file-total-size=16G --time=120 --file-test-mode=rndrw --threads=2 run >> results-test-disk-sysbench-D2s_v3_standard.txt
	echo "-------------------------------------FIM DA EXECUÇÃO $CONTADOR--------------------------------------------" >> results-test-disk-sysbench-D2s_v3_standard.txt
        let CONTADOR=CONTADOR+1;
done

sysbench fileio --file-total-size=16G cleanup
