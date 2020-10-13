#!/bin/bash/ 

array=() 
count=0 

for i in $(seq 100) 
do 
	if [ $(( $i % 11 )) -eq 0 ] 
		then 
		array[count]=$i 
		count=`expr $count + 1` 
	fi 
done 

echo "Array elements are ${array[@]}" 
