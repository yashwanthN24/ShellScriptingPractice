# ShellScriptingPractice


- Name your script with `.sh` extension or just the name of the filename anything works fine 

## SheBang 

```bash

#!/bin/bash

```

- when running scripts in linux it must know which interpreter to use to run that script `shebang` provides exactly that

## Output to terminal 

```bash 

echo "hello" "world" "ok" # Take multiple strings and outputs them to the terminal (stdout)

print "hello" # takes only one string and outputs to the terminal 

``` 


## Executing Shell scripts 

```bash 

./scriptname

# or 

./scriptname.sh 

# or 

/home/ubuntu/myscripts/myscript.sh

# or 

bash script.sh 

# or 

sh script.sh 

```

Note: `bash script.sh` or `sh script.sh` works even if there is not `x` permission set on the script

## Variables 

```bash 

VARIABLE_NAME=value

VARIABLE_NAME=$(hostname)  # command substitution stores the output of linux command hostname

echo $VARIABLE_NAME # To access value of variable and output it on terminal

```

## readonly variables 

```bash 

readonly VARNAME=value

echo $VARNAME

```

## Arrays 

```bash 

array_name=(value1 value2 value3)

echo $array_name

```

Accessing elements , operations on arrays 

```bash 

echo ${array_name[index]}

echo ${array_name[*]} # To print the complete array  this also works ${array_name[@]}

echo ${#myarray[*]} # To print the length of the array

echo ${myarray[-1]} # prints the last element negative indexing 

echo ${myarray[*]:1} # print the sliced array from the 1st index element 

echo ${myarray[*]:1:3} # print 3 elements from the 1st index 

# updateing arrays 

array_name+=(value1 value2)

```

Arrays for storing key-value pairs like object 

```bash 

declare -A array_name

array_name=( [key1]=value1 [key2]=value2 )

# access via keyname instead of index 

echo ${array_name[key1]}

```

## Strings 

```bash 

Variable_name="value" 

Variable_name='value' 

Variable_name=value

# To print the length of the string 

echo ${#variable_name}

# String operations 

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

```





