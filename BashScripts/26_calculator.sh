#!/bin/bash 

function add {
    x=$1
    y=$2
    echo $((x+y))
}

# res=$(add 12 3)
# echo $res


while true 
do 
    echo "Provide a choice " 
    echo "a)To add two numbers" 
    echo "b)To see all files in current directory" 
    echo "c)To see current date" 
    echo "d)To see current Location"
    echo "f)To exit"

    read -p "Enter your choice: " choice 

    case $choice in
        a)
            read -p "Enter first number: " n1
            read -p "Enter second number: " n2 
            echo " The sum of $n1 and $n2 is : $(add n1 n2)"
            ;;

        b) 
            echo "Viewing all files in current at location $(pwd)" 
            ls
            ;; 

        c) 
            echo "Viewing Current date" 
            date
            ;; 

        d)
            echo "Present location is" 
            pwd
            ;; 

        f) 
            echo "Thank you!!" 
            # exit #Exits the complete script 
            break  # just break out of this infinite while and continues program execution
            ;; 
        
    esac 
done

echo "---------------------------"
