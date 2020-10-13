#!/bin/bash/
 
array=() 

for (( i=0; i<10; i++ )) 
do 
	RandomNo=$(( $RANDOM % 100 + 100 )) 

	array[$i]=$RandomNo 
done 

echo "Values in array before sorting are ${array[@]}" 

length=${#array[@]}
max=${array[0]} 
min=${array[0]} 

for (( j=$(( $length - 1 )); j>=0; j-- )); 
do 
	for (( k=1; k<=j; k++ )); 
	do 
		if [[ ${array[k-1]} -gt ${array[k]} ]] 
		then 
		temp="${array[k-1]}" 
		array[k-1]="${array[k]}" 
		array[k]="$temp" 
fi 

done 

done 

echo "Values in array after sorting ${array[@]}" 

echo "Second largest value is : ${array[$length-2]}"

echo "Second smallest value is : ${array[1]}"
