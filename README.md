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

## User Interaction 

```bash 

echo "Your name ?:" 

read name

echo $name 

read -p "what is your name ?" name

echo $name 


```

## Arthematic operations 

```bash 


#!/bin/bash 

x=2
y=3 

echo $y + $x # dosnt work just prints the value of variables 

# To evaluate 

echo $((x+y))


echo $(($x + $y))  # works without $ as well when you use $(())

echo " Addition : $((x+y))" 

echo " Addition2 : $(($x+ $y))"

let b=$x*$y

let b1=x*y
echo "Multiplication : $b  $b1"

```

## Conditionals

**if-else , elif** 

```bash 

#!/bin/bash 

read -p "Enter your marks" marks 

if [[ $marks -ge 80 ]]
then 
    echo "1st Division" 
elif [[ $marks -ge 60 ]]
then
    echo "2nd Division" 
elif [[ $marks -ge 40 ]]
then
    echo "3rd Division" 
else 
    echo "Fail" 
fi

```

**case** 

```bash 

#!/bin/bash 

echo "Provide a choice"
echo "a)To see current date" 
echo "b)To see all files in current directory" 
echo "c)To see current location" 

read -p "Enter your choice : " choice 

case $choice in 
    a) 
        echo " Today's date is : "
        date 
        echo "Ending ..."
        ;;

    b) 
        ls 
        ;;

    c)  
        pwd
        ;; 

    *)
        echo "Invalid choice" 
        echo "Provide any options from a , b or c"
        ;;
esac 

```

## Loops 

**For Loop** 

```bash 


#!/bin/bash 

for i in {1..10}
do 
    echo "number is $i" 
done 

for name in raju "mighty" "ales" 
do 
    echo "name is ${name^^}"
done

```

```bash 

# infinite loop 

#!/bin/bash 

for ((; ; ))
do 
    echo "hi Buddy" 
    sleep 5s 
done 

```

**While Loop** 

```bash 

count=0 

while [[ $count -lt $num ]]
do 
    echo "Number is again : $count" 
    let count++
done 

```

```bash 

#infinite loop

#!/bin/bash 

while true 
do 
    echo "hi buddy" 
    sleep 2s 
done

```

**Until Loop**

```bash 

a=20

until [[ $a -eq 10 ]]
do 
    echo "Value of a is $a" 
    let a--
done 

```

## Functions 

```bash 

#!/bin/bash 

# To make a function
function welcome {
    echo "---------------------" 
    echo "hello world" 
    echo "---------------------" 
}

# To call the function (Just type the name of the function)
welcome 
welcome 
welcome

```

```bash 

function myfunc {
    local NAME
    echo $NAME
}

# here local means this variable is accessible only within this function outside this function variable NAME wont be accessible

```

```bash 

my_function() {
    local temp="hello"  # Only visible here
    echo "$temp"
}
my_function
echo "$temp"  # Prints nothing

```




```bash 

#!/bin/bash 

# This is another way to make a function in shell scripts
welcome(){
    echo "------------------------" 
    echo $SHELL;pwd
    echo "------------------------"
}

# To call the function just mention the function name
welcome 
welcome

```

- Passing arguments

```bash 

#!/bin/bash 

function welcomeNote {
    echo "---------------------------" 
    echo "Wecome $1" 
    echo "This is $0 file"
}

welcomeNote raju 
welcomeNote gucci

```

```bash 

my_function() {
    if [ some_condition ]; then
        return 0  # Success
    else
        return 1  # Failure
    fi
}

my_function
status=$?  # Capture exit status
echo "Status: $status"
```

```bash 

get_name() {
    echo "John"
}

name=$(get_name)  # Captures output
echo "$name"  # Prints: John

```

## Arguments in scripts 

- `$0` represents the filename/scriptname
- `$1` represents first argument passed as command line argument
- `$#` represents the count of number of arguments passed to this script 
- `$@` represents all the arguments passed to a script as an array
- `$?` is used to represent the exit status of the previous ran linux command 0 represent successful execution of command and non-zero means unsuccessful command 


- `exit` or `exit <exit_code>` is used to stop a script used in if_else 

- `dirname fileAbsolutepath` gives the directory path striping the main file

- `basename fileAbsolutePath`  gives only the filename stripping the directory info

- `realpath filename` gives the full absolute path of the file 

- `if [[ -d folder_name ]]` checks if folder exists 

- `if [[ ! -d folder_name ]]` check if folder not exists 

- `if [[ -f file_name ]]` if file exists 

- `if [[ ! -f file_name ]]`  if file not exists 

```bash 


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


```

**Bash Variables** 

- `RANDOM` - returns A Random integer between 0 and 32767 is generated 

- `UID` - User ID of the user logged in 




```bash 

#!/bin/bash 

for _ in {1..20}
do 
    echo "Random no : $RANDOM" 
    echo "UID : $UID" 
done


no=$(($RANDOM % 6 + 1 ))
echo "Random number is : $no " 

if [[ !  $UID -eq  0 ]]
then 
    echo "Please login as root user" 
else 
    echo "Login Successful" 
fi 

```

## Linux Redirects 

- you want redirect the output of any linux command to a file we can use the > (stdout) 

```bash 

ls > output.txt # writes the output of ls command into output file 

hostname > output.txt # > overides the content so only hostname is stored now 

# To Append use >> 

uname -o >> output.txt 

```



| Symbol | Represents | Example |
| --- | --- | --- |
| > | stdout (Stores Output of command (overriding))  | cd /root > output.txt |
| >>  | stdout (Stores Output of command (Appending)) | hostname >> output.txt  |
| 2> | write only stderr i.e only errors ignore output stdout | cd /root 2> error.txt  |
| &>  | writes both output (stdout) and errors (stderr) | cd /root &> output.log |


- lets say you dont want to store the output (stdout) nor the errors (stderr) you can write /dev/null its ignored 

```bash 

ping -c 1 www.google.com >> /dev/null # This way we dont see the output on terminal and no output or errors are shown in terminal nor stored in any logs 
 
```

## Debugging  Shell Scripts 

- `set -x` To run the script in debug mode which shows which command ran and its corresponding output 
- `set -e` To exit the script whenever any command fails immediately 
- `set -o pipeline` To exit when any command fails in pipelines 

```bash 

#!/bin/bash 

set -e # If you want to exit script when a command fails  
set -x # to run script in debug mode

pwd 

cd /root 

hostname

uname -o  

```

- Together use these 3 in scripts for best practices and better scripts 

## Running Scripts in background 

`nohup` command is used to run scripts in background making sure the script keep running even if the terminal session your using is closed 

**Syntax** 

`nohup script_name &`

- This redirect both errors and output to a file name nohup.out running the script in background 
- if you want to discard the output and error use this 

`nohup script > /dev/null 2>&1 &` 

- This discards both the output (stdout) and the errors (stderr) from the script and runs the script in background even if terminal closes 

## Automating Scripts 

- `at` is used for scheduling one time task i.e should run at 12:00 AM (Not repitive doesn't run everyday)
- `crontab` is used to schedule repitative tasks that should run everyday or every week or every month 

```bash 

at 12:00 AM

at> echo "Hello world" > output.txt
at>EOF (ctrl + D)

```

`crontab -l` lists all cron jobs setup for the current user 

`crontab -e` opens crontab editor to add a new cron job

```bash

05 12 * * * cd /workspaces/ShellScriptingPractice/BashScripts/ && ./automation_cron.sh

```




## Log Rotation 

- Rotation , compression and deletion of logs 
- logrotate provides these utility install it 

```bash 

sudo apt update && sudo apt install logrotate

```

`/etc/logrotate.conf` - contains common config for all log files edit it as per requirements 

`/etc/logrotate.d` - contains all applications specific logrotate config for new log file create a file named with the same name as app (convention)

- For each file in `/etc/logrotate.d` you will find this config customize as needed 

```bash 

/var/log/apt/history.log {
  rotate 12
  monthly
  compress
  missingok
  notifempty
}q

```

- logrotate -d (debug mode) simulates the rotation process without making changes, 

```bash 
logrotate -d /etc/logrotate.conf 

# or if your a non root user use sudo if applicable via sudoers  

sudo logrotate -d /etc/logrotate.conf 

```


- To manually trigger the logrotate you 

```bash 

logrotate /etc/logrotate.conf

# or if not root user 

sudo logrotate /etc/logrotate.conf

```

logrotate itself triggers this automatically at a specific time 
To check that

```bash 

systemctl status logrotate.timer

```

## anacron 

- Anacron is used to schedule periodic tasks in Linux systems that are not running 24/7, such as personal computers 
- Ideal for tasks that need to run daily , weekly or monthly,but not at a fixed time each day 

- Anacron checks once a day to see if there are any jobs scheduled to run that day. If the system was off at the scheduled time, Anacron will run the missed tasks as soon as the system is back up 

**Install** 

```bash 

#Ubuntu/Debian 
sudo apt install anacron 

#RHEL/Fedora 
yum install anacron

```

`/etc/anacrontab` - To check the configuration of anacron jobs 

```bash

15 5 backup_trigger /tmp/backup.sh

# Here 

# 15 means the period (evey 15 days)

# 5 is the delay before the script starts 

# backup_trigger is just a name given to this job 

# Actual shell sctipt 

```

Trigger this anacron job manually for test via 

```bash 

sudo anacron -fdn

``` 

Else they run automatically dont need to trigger manually 

## Rsync 

- Rsync is used to primarily tranfer files between two servers either local to remote or remote to remote 

**Syntax** 

```bash 

rsync -v filename/sourcepath username@hostname:/destinationpath

```

- Other Options : 
    -v - To show verbose details of the transfer
    -z - To compress and send file 
    -a - To archive and send preserves the files permissions as well 

