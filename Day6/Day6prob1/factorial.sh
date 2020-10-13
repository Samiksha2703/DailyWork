#!/bin/bash 

f=1
 
echo "Enter the number" 

read n 
 
for(( i=1; i<=n; i++ )) 
do 
	f=$((f * i)) 
done 

echo "Factorial of $n is $f" 
