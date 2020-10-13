#!/bin/bash/

echo "Welcome to Regex"


First_Name="^([[:upper:]]){3}[[:alpha:]]*$"

Last_Name="^([[:upper:]]){3}[[:alpha:]]*$"

E_MAIL_ID="^[a-zA-Z0-9]+([.+-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,}([.][a-zA-Z]{2,}){0,1}$"

Mob_No="91[[:blank:]][0-9]{10}$"


echo "Enter your first name"

read first_name

if [[ $first_name =~ $First_Name ]]
	then
	echo "Valid"
else
	echo "Invalid"
fi
	

echo "Enter your last name"

read last_name

if [[ $last_name =~ $Last_Name ]]
	then
	echo "Valid"
else
	echo "Invalid"
fi


echo "Enter your email id"

read email

if [[ $email =~ $E_MAIL_ID ]]
	then
	echo "Valid"
else
	echo "Invalid"
fi


echo "Enter your mobile number"

read mob

if [[ $mob =~ $Mob_No ]]
	then
	echo "Valid"
else
	echo "Invalid"
fi


echo "Enter password"

read pass

special=$(($(tr -d '[[:alnum:]]' <<< $pass | wc -m)-1))

if [[ ${#pass} -gt 8 && $pass =~ [[:upper:]] && $pass =~ [[:digit:]] && $special -eq 1 ]]
	then
	echo "Valid"
else
	echo "Invalid"
fi