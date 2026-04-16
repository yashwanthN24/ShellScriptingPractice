#!/bin/bash 
 
# Storing key value pairs 
 
declare -A myarray 
myarray=( [name]="yash" [age]=23 [city]=bangalore )

echo "my name is ${myarray[name]} and age is ${myarray[age]} and i live in ${myarray[city]}"