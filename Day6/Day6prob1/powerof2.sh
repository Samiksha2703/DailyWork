#!/bin/bash 

a=2

echo "Enter the number" 

read n 

for (( i=0; i<=n; i++ )) 
do 
	pow=$(( $a**$i )) 
	
	echo "$a ^ $i = $pow" 
done 
