#!/bin/bash/

degC () { 

echo "Enter the number to convert into degC between freezing point 32-212" 

read n 

if [[ $n -ge 32 && $n -le 212 ]]
	then 
	addC=`echo "scale=2; $n-32" | bc -l` 
	degC=`echo "scale=2; $addC*5/9" | bc -l` 
	echo "$n degF = $degC degC" 
else 
	echo "The value is not in range" 
fi
 
} 

degF () { 

echo "Enter the number to convert into degF between freezing point 0-100" 

read m 

if [[ $m -ge 0 && $m -le 100 ]] 
	then 
	addF=`echo "scale=2; $m*9/5" | bc -l` 
	degF=`echo "scale=2; $addF+32" | bc -l` 
	echo "$m degC = $degF degF" 
else 
	echo "The value is not in range" 
fi 

} 

echo "To convert value into degC enter 1 to convert into degF enter 0" 

read p 

if [ $p -eq 1 ] 
	then 
	degC 

elif [ $p -eq 0 ] 
	then 
	degF 
fi 
