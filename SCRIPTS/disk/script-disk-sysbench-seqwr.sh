#!/bin/bash

sudo apt update

sudo apt install sysbench -y

sysbench fileio --file-total-size=16G prepare

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
	echo "------------------------------------ÍNICIO DA EXECUÇÃO $CONTADOR------------------------------------------" >> results-sysbench-seqwr-t2-large.txt
        sysbench fileio --file-total-size=16G --time=120 --file-test-mode=seqwr --threads=2 run >> results-sysbench-seqwr-t2-large.txt
	echo "-------------------------------------FIM DA EXECUÇÃO $CONTADOR--------------------------------------------" >> results-sysbench-seqwr-t2-large.txt
        let CONTADOR=CONTADOR+1;
done

sysbench fileio --file-total-size=16G cleanup
