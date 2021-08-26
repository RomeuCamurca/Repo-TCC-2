#!/bin/bash

./calc-avg-memory.sh $1 $2 3 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Integer-Serial-Read.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Integer-Serial-Read.txt


./calc-avg-memory.sh $1 $2 4 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Integer-Serial-Rd_Wrt.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Integer-Serial-Rd_Wrt.txt


./calc-avg-memory.sh $1 $2 5 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Integer-Random-Read.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Integer-Random-Read.txt


./calc-avg-memory.sh $1 $2 6 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Integer-Random-Rd_Wrt.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Integer-Random-Rd_Wrt.txt


./calc-avg-memory.sh $1 $2 7 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Double_Integer-Serial-Read.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Double_Integer-Serial-Read.txt


./calc-avg-memory.sh $1 $2 8 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Double_Integer-Serial-Rd_Wrt.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Double_Integer-Serial-Rd_Wrt.txt


./calc-avg-memory.sh $1 $2 9 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Double_Integer-Random-Read.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Double_Integer-Random-Read.txt


./calc-avg-memory.sh $1 $2 10 results-t2_xlarge/file-$3/total-t2_xlarge-file-$3-Double_Integer-Random-Rd_Wrt.txt results-t2_xlarge/file-$3/avg-t2_xlarge-file-$3-Double_Integer-Random-Rd_Wrt.txt
