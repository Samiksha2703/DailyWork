#!/bin/bash/ 

declare -A mon 

N=10 

jan=0 
feb=0 
mar=0 
apr=0 
may=0 
jun=0 
jul=0 
aug=0 
sep=0 
oct=0 
nov=0 
dec=0 

mon[1]=0 
mon[2]=0 
mon[3]=0 
mon[4]=0 
mon[5]=0 
mon[6]=0 
mon[7]=0 
mon[8]=0 
mon[9]=0 
mon[10]=0 
mon[11]=0 
mon[12]=0


for i in `seq $N` 
do 
	R=$(( $RANDOM % 24 + 1 )) echo $R 

	if [ $R -eq 1 -o $R -eq 13 ]
		then 
		jan=$(( $jan + 1 )) 
		mon[1]=$jan 

	elif [ $R -eq 2 -o $R -eq 14 ]
		then 
		feb=$(( $feb + 1 )) 
		mon[2]=$feb 

	elif [ $R -eq 3 -o $R -eq 15 ]
		then 
		mar=$(( $mar + 1 )) 
		mon[3]=$mar 

	elif [ $R -eq 4 -o $R -eq 16 ]
		then 
		apr=$(( $apr + 1 )) 
		mon[4]=$apr 

	elif [ $R -eq 5 -o $R -eq 17 ]
		then 
		may=$(( $may + 1 )) 
		mon[5]=$may
 
	elif [ $R -eq 6 -o $R -eq 18 ]
		then 
		jun=$(( $jun + 1 )) 
		mon[6]=$jun 

	elif [ $R -eq 7 -o $R -eq 19 ]
		then 
		jul=$(( $jul + 1 )) 
		mon[7]=$jul 

	elif [ $R -eq 8 -o $R -eq 20 ]
		then 
		aug=$(( $aug + 1 )) 
		mon[8]=$aug 

	elif [ $R -eq 9 -o $R -eq 21 ]
		then 
		sep=$(( $sep + 1 )) 
		mon[9]=$sep 

	elif [ $R -eq 10 -o $R -eq 22 ]
		then 
		oct=$(( $oct + 1 ))
		mon[10]=$oct 

	elif [ $R -eq 11 -o $R -eq 23 ] 
		then 
		nov=$(( $nov + 1 )) 
		mon[11]=$nov 

	elif [ $R -eq 12 -o $R -eq 24 ] 
		then 
		dec=$(( $dec + 1 )) 
		mon[12]=$dec 
	fi 
done 

echo "The length of the dictionary is ${#mon[@]}" 

for i in `seq ${#mon[@]}` 
do 
	echo "$i month : ${mon[$i]} people" 
done 
