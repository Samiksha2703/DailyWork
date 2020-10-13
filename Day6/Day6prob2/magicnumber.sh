#!/bin/bash/ 

read n 
low=1 
high=100 

echo "Enter the number you guessed between 1 to 100" 

if [ $n -lt 1 -o $n -gt 100 ]; 
	then 
	echo "The number must be between 1 to 100." 
fi 

while [ $n > 0 ] 
do 
	mid=$(( $low + $(( $high - $low )) / 2 )) 

if [ $n -lt $mid ] 
	then 
	high=$(( $mid - 1 )) 

elif [ $n -gt $mid ] 
	then 
	low=$(( $mid + 1 )) 

else 
	echo "The number you guessed is $n" 
	break 
fi 

done 
