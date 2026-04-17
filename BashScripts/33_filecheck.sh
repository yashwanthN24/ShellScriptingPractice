#!/bin/bash 

FILEPATH=$(pwd)/yash.txt

if [[ ! -f $FILEPATH ]]
then 
    echo "File Doesn't exist"
    echo "Creating file" 
    touch $FILEPATH
else 
    echo "File Exists"
fi


FILEPATH2=$(pwd)/test

if [[ ! -d $FILEPATH2 ]]
then 
    echo "directory not found" 
    echo "Creating directory..." 
    mkdir -p $FILEPATH2
else 
    echo "directory exists" 
fi