#!/bin/bash

sudo apt update

sudo apt install iperf3 -y

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
	echo "------------------------------------ÍNICIO DA EXECUÇÃO $CONTADOR------------------------------------------" >> log-network-e2-standard-2.txt
	iperf3 -t 120 -f M -i 5 -c 10.150.0.32 >> log-network-e2-standard-2.txt
	echo "-------------------------------------FIM DA EXECUÇÃO $CONTADOR--------------------------------------------" >> log-network-e2-standard-2.txt
        let CONTADOR=CONTADOR+1;
done
