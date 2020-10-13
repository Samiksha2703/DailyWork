#!/bin/bash/

cash=100 
goal=0 

while [ $cash -ne 0 ] 
do 
	random=$(( $RANDOM % 2 )) 
	rem=$(( $random % 2 )) 

if [ $rem -eq 0 ] 
	then 
	cash=$(( $cash + 10 )) 
	goal=$cash 
else 
	cash=$(( $cash - 10 )) 
	goal=$cash 
fi

if [ $goal -eq 0 ] 
	then 
	echo "You lost" 
	break
 
elif [ $goal -eq 200 ] 
	then 
	echo "You won" 
	break 
fi 

done 
