#!/bin/bash/
 
array=() 

for (( i=0; i<10; i++ )) 
do 
	RandomNo=$(( $RANDOM % 100 + 100 )) 

	array[$i]=$RandomNo 
done 

echo "Values in array are ${array[@]}" 

max=${array[0]} 
min=${array[0]} 

for (( j=0; j<10; j++ )) 
do 

if [ ${array[j]} -gt $max ] 
	then 
	max=${array[j]} 
fi 

if [ ${array[j]} -lt $min ] 
	then 
	min=${array[j]} 
fi 

done 

echo "maximum = $max minimum = $min" 
