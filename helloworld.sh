#!/bin/bash
# Name: helloworld.sh
# Last revision: 07/08/21
# Purpose: Gather and write IP address to output.txt
# IP = Var System IP
# Author: Jason Kingery

IP=$(hostname -I)
echo $IP>>output.txt
echo "Adding IP to output.txt"
cat output.txt