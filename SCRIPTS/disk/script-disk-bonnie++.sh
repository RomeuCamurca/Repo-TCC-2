#!/bin/bash

sudo apt update

sudo apt install bonnie++ -y

bonnie++ -r 8192 -s 16384 -x 1 -n 16 -f >> result-test-disk-t2-large.txt

