#!/bin/bash/  

flag=0

echo "Enter the number" 

read n 
 
if [ $n -eq 0 -o $n -eq 1 ] 
	then
	flag=1 
fi 

if [ $n > 2 ] 
	then 
	for (( i=2; i<n; i++ )) 
do 

check=$(( $n % $i )) 

if [ $check -eq 0 ] 
	then 
	flag=1 
	break 
fi 

done 

if [ $flag -eq 0 ] 
	then 
	echo "The number is prime number" 
else 
	echo "The number is not prime number"
fi 

fi 
