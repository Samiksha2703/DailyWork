#!/bin/bash/ 

add=0

echo "Enter the number"

read num

temp=$num

while [ $temp != 0 ]
do
	rem=$(( $temp % 10 ))
	add=$(( $add + $rem ))
	temp=$(( $temp / 10 ))
done

echo "The sum of the digit of entered number that is $num is $add"