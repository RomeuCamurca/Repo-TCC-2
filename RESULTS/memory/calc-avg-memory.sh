#!/bin/bash

cat $1 | grep -e $2 | cut -d ':' -f$3 | paste -s -d + | bc >> $4

echo "/30" >> $4

paste -s -d x $4 | sed 's/x//' | bc >> $5

sed -i '2d' $4
