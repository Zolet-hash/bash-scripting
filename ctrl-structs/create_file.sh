#!/bin/bash

echo "Input filename"
read filename
if [ -e $filename ]; then
	echo "the file exists"
else
	echo "the file does not exist"
	echo "creating the file..."
	created_file=$(touch $filename)
	echo "$filename file crated"
fi
