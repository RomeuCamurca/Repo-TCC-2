#!/bin/bash

sudo apt update

sudo apt install iperf3 -y

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
	echo "------------------------------------ÍNICIO DA EXECUÇÃO $CONTADOR------------------------------------------" >> log-network-t2-large.txt
	iperf3 -t 120 -f M -i 5 -c 172.31.89.77 >> log-network-t2-large.txt
	echo "-------------------------------------FIM DA EXECUÇÃO $CONTADOR--------------------------------------------" >> log-network-t2-large.txt
        let CONTADOR=CONTADOR+1;
done
