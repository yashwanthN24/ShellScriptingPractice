#!/bin/bash 

cat names.csv | awk -F"," 'NR!=1 {print}' |
while IFS="," read id name age # compulsory you have to read all field irrespective whether you use them or not 
do 
    echo "Id is $id" 
done