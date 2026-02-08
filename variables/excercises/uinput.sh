#!/bin/bash

#Propmt for user info
echo "What is your name? "
read name
echo "Please enter your age"
read age

# proces info
current_year=$(date +%Y)
birth_year=$((current_year - age))

# display results
echo "Hello $name"
echo "You were born around: $birth_year."

if [ $age -lt 18 ]; then 
	echo "You're a minor"
elif [ $age -gt 65 ]; then
	echo "You're eligible for senior benefits"
else 
	echo "You're an adult"
fi
