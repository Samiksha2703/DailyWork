#!/bin/bash/

myfunc () { 

rem=0 
pal=0 

while [ $temp -gt 0 ] 
do 
	rem=$(( $temp % 10 )) 
	pal=`expr $pal \* 10 + $rem` 
	temp=$(( $temp / 10 )) 
done 

} 

echo "Entered the number to find whether it is palindrome or not"

read n 
temp=$n 

myfunc $temp 

if [ $pal -eq $n ] 
	then 
	echo "The number is palindrome" 
else 
	echo "The number is not palindrome" 
fi 
