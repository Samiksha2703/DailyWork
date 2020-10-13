#!/bin/bash/  

Hs=0

echo "Enter the number" 

read n 
 
for (( i=1; i<=n; i++ )) 
do 
	add=`echo "scale=2; 1/$i" | bc -l`

	Hs=`echo "scale=2; $Hs+$add" | bc -l` 

done 

echo "The $n th harmonics number is $Hs" 
