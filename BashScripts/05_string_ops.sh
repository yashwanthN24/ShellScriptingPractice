#!/bin/bash 
 
myvar="Hey Buddy How are you?" 

length=${#myvar}

echo "length of myvar is : $length"

text="yash" 

# convert entire string to uppercase use variable^^
echo "Upper cased version of text is : ${text^^}"

# convert entire string to lowercase use variablename,, 
echo "Lower cased version of text is : ${text,,}"

# replace a word with other in a string  (It is case sensitive)

echo "replace hey with hi in myvar : ${myvar/Hey/hi}"

# slice of a string 
echo "slice : ${myvar:4}"


echo "slice 2 :   ${myvar:4:5}" # 2nd param is how many characters from the passed first index

# so this gets 5characters from the 4th index 


new_var=$(echo "$myvar"  | sed 's/hey/hi/gi') 

echo "Replaced sentence : $new_var"

echo "Replaced = $(echo $myvar | sed 's/hey/yo/gi' )" # command substitution 
