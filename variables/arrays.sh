#!/bin/bash

#Declare an array
fruits=("Apple" "Banana" "Cherry" "Date")

#Access specific element
echo "First fruit: ${fruits[0]}"

#Access all elements
echo "All fruits: ${fruits[@]}"

#Get array length
echo "Number of fruits ${#fruits[@]}"

#add element in an array
fruits+=("pineaple")

echo "Updated fruits: ${fruits[@]}"

#delete element in an array
unset fruits[2]
echo "After removal: ${fruits[@]}"

