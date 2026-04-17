#!/bin/bash 

echo "Hello" 

echo $1

shift  # To remove the first param from the remaining all arguments

echo "Description is $@" 

