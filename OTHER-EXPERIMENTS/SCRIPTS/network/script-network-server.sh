#!/bin/bash

sudo apt update

sudo apt install iperf3 -y

iperf3 -s
