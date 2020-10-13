#!/bin/bash

echo "Enter the lower and upper limit" 

read l 
read u 

if [ $l -lt 0 -o $u -le 0 ] 
	then
	echo "Entered the valid range"
else
	echo "Prime numbers between range"

for (( i=$l+1; i<$u; i++))
do
	flag=0

if [ $i -eq 0 -o $i -eq 1 ]
	then flag=1
fi

if [ $i > 2 ]
	then
	for (( j=2; j<$i; j++ ))
	do
		check=$(( $i % $j ))
			if [ $check -eq 0 ]
				then
				flag=1
				break
			fi
	done

	if  [ $flag -eq 0 ]
		then
		echo -n " " $j
	fi
	
fi

done

fi
