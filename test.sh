#!/bin/bash 

# write a script to print number of S in mississippi

STR="mississippi" 

grep -o "s" <<< "$STR" | wc -l 
