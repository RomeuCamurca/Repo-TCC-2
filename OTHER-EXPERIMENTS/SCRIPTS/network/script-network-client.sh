#!/bin/bash

sudo apt update

sudo apt install iperf3 -y

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
	echo "------------------------------------ÍNICIO DA EXECUÇÃO $CONTADOR------------------------------------------" >> log-network-B4ms-standard.txt
	iperf3 -t 120 -f M -i 5 -c 10.0.0.5 >> log-network-B4ms-standard.txt
	echo "-------------------------------------FIM DA EXECUÇÃO $CONTADOR--------------------------------------------" >> log-network-B4ms-standard.txt
        let CONTADOR=CONTADOR+1;
done
