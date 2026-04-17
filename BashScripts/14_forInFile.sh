#!/bin/bash 

FILE=$(pwd)/names.txt

for name in $(cat $FILE)
do 
    echo "name is $name" 
done 

