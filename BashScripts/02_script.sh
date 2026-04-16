#!/bin/bash 


a=5
age=45
name=yash # same as "yash"

echo my name is $name and my age is $age

echo "my name is $name and my age is $age" 

name=rocky # same as "rocky"

echo my name is $name

printf "My name is %s\n"  $name

host=$(hostname) # hostname linux command provides the machine name 

# variablename = $(hostname) stores the output of the command into the variable

echo "Name of this machine is $host"

# readonly variables 

readonly full_name="yashwanth"

echo "my full name is $full_name" 

full_name="yahs"

echo "$full_name" 

