#!/bin/bash 

set -e # If you want to exit script when a command fails  
set -x # to run script in debug mode

set -o pipefail

pwd 

# cd /root 

hostname

uname -o  

cat yashwa.txt | grep -v grep  

ls -ltr | wc -l

