#!/bin/bash/  

array=(0 -1 2 -3 1) 

triplet=0 

length=${#array[@]} 

echo "The array elements are ${array[@]}" 

for (( i=0; i<$length-2; i++ )) 
do 
	for (( j=i+1; j<$length-1; j++ )) 
	do 
		for (( k=j+1; k<$length; k++ )) 
		do 
			if [[ $(( ${array[i]} + ${array[j]} + ${array[k]} )) == $triplet ]] 				
				then 
					echo "Triplets ( ${array[i]} ${array[j]} ${array[k]} )" 
			fi 
		done 
	done 
done 
