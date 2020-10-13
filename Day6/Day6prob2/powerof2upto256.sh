#!/bin/bash

a=2 
i=0 

echo "Enter the number" 

read n 

while [ $i -lt $n ] 
do 
	pow=$(( $a**$i )) 

if [ $pow -lt 256 ] 
	then 
	echo "$a ^ $i = $pow" 
fi 

i=$(( $i + 1 )) 

done 
