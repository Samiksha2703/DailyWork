#!/bin/bash

#Selection Practice Problems with elif and else 


#1. Write a practice problem that reads 5 Random 3 digit values and then outputs the minimum and maximum value 

MAX=0
MIN=0
N=5
i=1

echo "Five three digit numbers are : "

while [ $i -le $N ]
do
	num=$(( $RANDOM % 1000 + 100 ));
		echo $num
if [ $i -eq 1 ]
	then
	MAX=$num
	MIN=$num
fi

if [ $num -gt $MAX ]
	then
	MAX=$num

elif [ $num -lt $MIN ]
	then
	MIN=$num
fi

	i=$(( $i + 1 ))
done

echo "Maximum number is $MAX"

echo "Minimum number is $MIN"


#2. Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise. 

StartDate=2292020
EndDate=7012020

echo "Enter date in format mmddYYYY"

read date

echo "Given date is : $date"

if [[ $StartDate -lt $date && $EndDate -gt $date ]]
        then
        echo "Entered date $date is in range"
else
        echo "Entered date is not in range"
fi


#3. Write a program that takes a year as input and outputs the year as a leap year or not a leap year. A leap year checks for 4 digit numbers, divisible by 4 and not 100 unless divisible by 400. 

echo "Enter the year in format YYYY"

read year

if [[ $((year % 4)) -eq 0 || $((year % 100)) -eq 0  &&  $((year % 400)) -eq 0 ]]
        then
        echo "It's a leap year"
else
        echo "It's not a leap year"
fi


#4. Write a program to simulate a coin flip and print out “Heads” or “Tail” according.

echo "Flip the coin"

val=$(( $RANDOM % 2 ));

if [ $val -eq 0 ];
        then
        echo "It’s Tail"
else
        echo "It's Head"
fi


#Selection Practice Problems with if, elif and else


#1. Read a single digit number and write the number in word.

echo "Enter the single digit number"

read n

if [ $n -eq 0 ]
        then
        echo "Zero"

elif [ $n -eq 1 ]
        then
        echo "One"

elif [ $n -eq 2 ]
        then
        echo "Two"

elif [ $n -eq 3 ]
        then
        echo "Three"

elif [ $n -eq 4 ]
        then
        echo "Four"

elif [ $n -eq 5 ]
        then
        echo "Five"

elif [ $n -eq 6 ]
        then
        echo "Six"

elif [ $n -eq 7 ]
        then
        echo "Seven"

elif [ $n -eq 8 ]
        then
        echo "Eight"

else [ $n -eq 9 ]
        echo "Nine"

fi


#2. Read a Number and Display the week day (Sunday, Monday,...)

echo "Enter the number between 1 to 7 to know the day of the week"

read n

if [ $n -eq 1 ]
        then
        echo "Monday"

elif [ $n -eq 2 ]
        then
        echo "Tuesday"

elif [ $n -eq 3 ]
        then
        echo "Wednesday"

elif [ $n -eq 4 ]
        then
        echo "Thursday"

elif [ $n -eq 5 ]
        then
        echo "Friday"

elif [ $n -eq 6 ]
        then
        echo "Saturday"

elif [ $n -eq 7 ]
        then
        echo "Sunday"

else
	echo "Invalid"

fi


#3. Read a Number 1, 10, 100, 1000, etc and display units, ten, hundred,...

echo "Enter the number to see the unit between 1 to 100000000" 

read n

if [ $n -ge 1 -a $n -le 100000000 ]
then
        if [ $n -eq 1 ]
        then
        echo "Units"

        elif [ $n -eq 10 ]
        then
        echo "Tens"

        elif [ $n -eq 100 ]
        then
        echo "Hundreds"

        elif [ $n -eq 1000 ]
        then
        echo "Thousands"

        elif [ $n -eq 10000 ]
        then
        echo "Ten Thousands"

        elif [ $n -eq 100000 ]
        then
        echo "Lakhs"

        elif [ $n -eq 1000000 ]
        then
        echo "Ten Lakhs"

        elif [ $n -eq 10000000 ]
        then
        echo "Crores"

        elif [ $n -eq 100000000 ]
        then
        echo "Ten Crores"

	fi
else

echo "The number is not in the range"

fi


#4. Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum
#1. a + b * c 3. c + a / b
#2. a % b + c 4. a * b + c

echo "Enter three numbers"

read a
read b
read c

p=$(( a + b * c ))
q=$(( c + a / b ))
r=$(( a % b + c ))
s=$(( a * b + c ))

echo "New numbers generated are $p $q $r $s"

if [ $p -gt $q -a $p -gt $r -a $p -gt $s ]
        then
        echo "$p is the max no in the range."

        elif [ $q -gt $p -a $q -gt $r -a $q -gt $s ]
        then
        echo "$q is the max no in the range."

        elif [ $r -gt $p -a $r -gt $q -a $r -gt $s ]
        then
        echo "$r is the max no in the range."

        else echo "$s is the max no in the range."
fi

if [ $p -lt $q -a $p -lt $r -a $p -lt $s ]
        then
        echo "$p is the min no in the range."

elif [ $q -lt $p -a $q -lt $r -a $q -lt $s ]
        then
        echo "$q is the min no in the range."

elif [ $r -lt $p -a $r -lt $q -a $r -lt $s ]
	then
        echo "$r is the min no in the range."

else echo "$s is the min no in the range."

fi


#Selection Practice Problems with case statement


#1. Read a single digit number and write the number in word using

echo "Enter the single digit number"

read n

case $n in

1) echo "one"
;;

2) echo "two"
;;

3) echo "three"
;;

4) echo "four"
;;

5) echo "five"
;;

6) echo "six"
;;

7) echo "seven"
;;

8) echo "eight"
;;

9) echo "nine"
;;

*) echo "Invalid Number"
;;

esac


#2. Read a Number and Display the week day (Sunday, Monday,...)

echo "Enter the number between 1 to 7"

read n

case $n in

1) echo "Monday"
;;

2) echo "Tuesday"
;;

3) echo "Wednesday"
;;

4) echo "Thursday"
;;

5) echo "Friday"
;;

6) echo "Saturday"
;;

7) echo "Sunday"
;;

*) echo "Invalid Number"
;;

esac


#3. Read a Number 1, 10, 100, 1000, etc and display units, tens, hundreds,...

echo "Enter the number to see the unit between 1 to 100000000"

read n

case $n in

1) echo "Units"
;;

10) echo "Tens"
;;

100) echo "Hundreds"
;;

1000) echo "Thousands"
;;

10000) echo "Ten Thousands"
;;

100000) echo "Lakhs"
;;

1000000) echo "Ten Lakhs"
;;

10000000) echo "Crores"
;;

100000000) echo "Ten Crores"
;;

*) echo "Invalid Number"
;;

esac


#4. Write a program that takes User Inputs and does Unit Conversion of different Length units
#1. Feet to Inch 3. Inch to Feet
#2. Feet to Meter 4. Meter to Feet

echo "Enter the number"

read n

echo "enter 1 for feettoinch, 2 for inchtofeet, 3 for feettometer, 4 for metertofeet"

read m

feettoinch=`echo "scale=2; $n*12" | bc -l`

inchtofeet=`echo "scale=2; $n/12" | bc -l`

feettometer=`echo "scale=2; $n*0.305" | bc -l`

metertofeet=`echo "scale=2; $n/0.305" | bc -l`

case $m in

1) echo "$n feet = $feettoinch inch"
;;

2) echo "$n inch = $inchtofeet feet"
;;

3) echo "$n feet = $feettometer meter"
;;

4) echo "$n meter = $metertofeet feet"
;;

*) echo "Invalid input for unit conversion"
;;

esac

