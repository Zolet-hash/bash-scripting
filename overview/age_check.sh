#!/bin/bash

echo "What is your age?"

read age

if [ "$age" -lt 18 ]; then
	echo "You're under 18 years old"

elif [ "$age" -eq 18 ]; then 
	echo "You're 18 years old"
else
  echo "Youre over 18 years old"
fi
