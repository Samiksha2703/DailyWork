#!/bin/bash/ 

echo "Flip the coin" 

H=0 
T=0 

while [ $H -ne 11 -a $T -ne 11 ] 
do 
	random=$(( $RANDOM % 2 )); 
 
if [ $random -eq 0 ] 
	then 
	H=`expr $H + 1`
else 
	T=`expr $T + 1` 
fi 

done 

if [ $H -eq 11 ] 
	then
	echo "Head Wins" 
else
	echo "Tail Wins" 
fi 
