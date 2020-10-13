#!/bin/bash/ 

prime () 

{ 

flag=0 

if [ $n -eq 0 -o $n -eq 1 ] 
	then flag=1 
fi 

if [ $n > 2 ] 
	then 
	for (( i=2; i<n; i++ )) 
do 

check=$(( $n % $i )) 

if [ $check -eq 0 ] 
	then 
	flag=1 
	break 
fi 

done 

fi 

} 

pal () { 

temp=$n 
rem=0 
pal=0 

while [ $temp -gt 0 ] 
do 
	rem=$(( $temp % 10 ))
	pal=`expr $pal \* 10 + $rem` 
	temp=$(( $temp / 10 )) 
done
 
} 

echo "Enter the number" 

read n 
prime $n 

if [ $flag -eq 0 ] 
	then 
	echo "The number is prime number" 
pal $n 

if [ $pal -eq $n ] 
	then 
	echo "The palindrome of $n is $pal" 
	echo "The number and it's palindrome both are prime numbers" 

else 
	echo "The number is not palindrome" 
fi 

else 
	echo "The number is not prime number" 
fi 
