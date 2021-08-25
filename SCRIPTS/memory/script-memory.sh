#!/bin/bash

wget http://www.roylongbottom.org.uk/memory_benchmarks.tar.gz

tar xvf memory_benchmarks.tar.gz

cd memory_benchmarks

cd bin_32_and_64

rm BusSpd.txt RandMem.txt SSEfpu.txt

CONTADOR=1
while [  $CONTADOR -lt 31 ]; do
        echo | ./randmem64
        let CONTADOR=CONTADOR+1;
done
