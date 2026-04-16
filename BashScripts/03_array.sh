#!/bin/bash
 
 myarray=(12 "hello" 23.6 true false "yash")

 echo "All values of array : ${myarray[@]}" 

 echo "value at last index is ${myarray[-1]}" 

 echo "value at first index is ${myarray[-6]}"  

 # negative indexing works here as well -1 represent last element -length represents first element 

 echo "length of the array or no of elements in the array: ${#myarray[*]}"

 # Array slicing (or subarrays)

 echo "Array from 1st index element ${myarray[*]:1}"

 echo "Array from 1st index element to 2nd  index ${myarray[*]:1:3}" 

 echo $myarray  # This is for normal scalar printing so prints the first value of array myarray 

# updating array 

myarray+=(new 98 102.3)

echo  "New updated Array is ${myarray[*]}" 



