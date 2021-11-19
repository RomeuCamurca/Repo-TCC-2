#!/bin/bash

cat $1 | grep -e '    written, MiB/s:' >> result-format-sysbench-rndrw-written-$2.txt
cat result-format-sysbench-rndrw-written-$2.txt | cut -d ':' -f 2 | sed 's/ //g' | paste -s -d + | bc > total-sysbench-rndrw-written-$2.txt
echo "/30" >> total-sysbench-rndrw-written-$2.txt
cat total-sysbench-rndrw-written-$2.txt | paste -s -d x | sed 's/x//' | bc >> media-sysbench-rndrw-written-$2.txt
sed -i '2d' total-sysbench-rndrw-written-$2.txt
