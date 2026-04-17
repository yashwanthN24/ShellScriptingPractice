#!/bin/bash 

x=2
y=3 

echo $y + $x # dosnt work just prints the value of variables 

# To evaluate 

echo $((x+y))


echo $(($x + $y))

echo " Addition : $((x+y))" 

echo " Addition2 : $(($x+ $y))"

let b=$x*$y

let b1=x*y
echo "Multiplication : $b  $b1"