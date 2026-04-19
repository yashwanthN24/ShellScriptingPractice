#!/bin/bash 

# set -x 
# set -o 
# set -e pipefail 

RED=$'\e[1;31m'
GREEN=$'\e[1;32m]'
BLUE=$'\e[1;34m'

while true 
do 
    clear
    echo $BLUE `date +%T` # command substitution use ``  backticks ot $()
    sleep 1s 
done