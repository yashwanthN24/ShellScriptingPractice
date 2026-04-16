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



