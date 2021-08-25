#!/bin/bash

cat $1 | grep -E '(^    RAM|^     KB|^      6|^     12|^     24|^     48|^     96|^    192|^    384|^    768|^   1536|^   3072|^   6144|^  12288|^  24576|^  49152|^  98304|^ 196608|^ 393216|^ 786432|^1572864)' >> RandMem-t2_large-result-format.txt

sed -i '/1572864/a =======================================================================' RandMem-t2_large-result-format.txt

sed -i -e "s/[[:space:]]\+/:/g" RandMem-t2_large-result-format.txt

sed -i 's/1572864/:1572864/' RandMem-t2_large-result-format.txt
