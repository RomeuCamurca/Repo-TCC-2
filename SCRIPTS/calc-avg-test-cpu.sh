#!/bin/bash

cat log-tests-cpu-instance.txt | grep "total number of events:" | cut -d ':' -f 2 | sed 's/ //g' | paste -s -d + | bc > total-number-of-events-test-cpu-instance.txt

echo "/30" >> total-number-of-events-test-cpu-instance.txt

paste -s -d x total-number-of-events-test-cpu-instance.txt | sed 's/x//' | bc > avg-test-cpu-instance.txt

sed -i '2d' total-number-of-events-test-cpu-instance.txt
