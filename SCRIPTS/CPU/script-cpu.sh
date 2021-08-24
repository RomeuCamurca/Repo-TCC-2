#!/bin/bash

sudo apt update

sudo apt install sysbench -y

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
        echo "------------------------------------ÍNICIO DA EXECUÇÃO $CONTADOR------------------------------------------" >> ./log-tests-cpu.txt
        sysbench cpu --time=120 --threads=2 --cpu-max-prime=30000 run >> ./log-tests-cpu.txt
        echo "-------------------------------------FIM DA EXECUÇÃO $CONTADOR--------------------------------------------" >> ./log-tests-cpu.txt
        let CONTADOR=CONTADOR+1; 
done
