#!/bin/bash

sudo apt update

sudo apt install iperf3 -y

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
	echo "------------------------------------ÍNICIO DA EXECUÇÃO $CONTADOR------------------------------------------" >> log-network-D2s-v3-standard.txt
	iperf3 -t 120 -f M -i 5 -c 10.1.0.4 >> log-network-D2s-v3-standard.txt
	echo "-------------------------------------FIM DA EXECUÇÃO $CONTADOR--------------------------------------------" >> log-network-D2s-v3-standard.txt
        let CONTADOR=CONTADOR+1;
done
