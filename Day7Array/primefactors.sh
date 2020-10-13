#!/bin/bash/ 

count=0 
flag=0 
k=0 
array=() 

echo "Enter an integer : " 

read int 

if [ $int -le 1 ] 
	then 
	echo "Not allowed!" 
	exit 
fi 

for (( i=2; i<=int; i++ )) 
do 
	if [ $(( $int % $i )) -eq 0 ] 
	then 
	factor=$i 
		for (( j=2; j<$factor; j++ )) 
		do 
			check=$(( $factor % $j )) 
				if [ $check -eq 0 ] 
					then 
					flag=1 
					break 
				fi 
		done 
		
		if [ $flag -eq 0 ] 
			then 
			array[$k]=$factor 
			k=$(( $k + 1 )) 
			count=1 
		fi 
	fi 
done 

if [ $count -eq 0 ] 
	then 
	echo "No prime factors found except 1 and $input" 
else 
	echo "The prime factors of the number : ${array[@]}" 
fi
