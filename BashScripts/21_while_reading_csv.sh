#!/bin/bash


while IFS="," read field1 field2 field3 
do 
    echo "Id is $field1" 
    echo "name is $field2" 
    echo "age is $field3" 
done < names.csv 

