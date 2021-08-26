#!/bin/bash

./calc-avg-memory.sh $1 $2 3 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Integer-Serial-Read.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Integer-Serial-Read.txt


./calc-avg-memory.sh $1 $2 4 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Integer-Serial-Rd_Wrt.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Integer-Serial-Rd_Wrt.txt


./calc-avg-memory.sh $1 $2 5 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Integer-Random-Read.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Integer-Random-Read.txt


./calc-avg-memory.sh $1 $2 6 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Integer-Random-Rd_Wrt.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Integer-Random-Rd_Wrt.txt


./calc-avg-memory.sh $1 $2 7 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Double_Integer-Serial-Read.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Double_Integer-Serial-Read.txt


./calc-avg-memory.sh $1 $2 8 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Double_Integer-Serial-Rd_Wrt.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Double_Integer-Serial-Rd_Wrt.txt


./calc-avg-memory.sh $1 $2 9 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Double_Integer-Random-Read.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Double_Integer-Random-Read.txt


./calc-avg-memory.sh $1 $2 10 results-B4ms_standard/file-$3/total-B4ms_standard-file-$3-Double_Integer-Random-Rd_Wrt.txt results-B4ms_standard/file-$3/avg-B4ms_standard-file-$3-Double_Integer-Random-Rd_Wrt.txt

