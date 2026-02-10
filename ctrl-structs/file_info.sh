#!/bin/bash
echo "enter filename"
read filename

#Create a script that takes a filename as input and 
#displays information about the file (size, type, permissions).

#check if file exists
if [ -e $filename ]; then
	echo "fetching $filename info..."
	if [ -f $filename ]; then 
		echo "$filename is a regular file"
	fi
	#check if the filename is readable
	if [ -r $filename ]; then 
		 echo "$filename is readable"
	fi 
	#check if the filename is writable
	if [ -w $filename ]; then 
		echo "$filename is writable"
	fi
	#check if the filename is executabe
	if [ -x $filename ]; then 
		echo "$filename is executabe"
	fi
	
else
	echo "$filename file does not exist"
fi
	
size=$(du -b "$filename" | awk '{print $1}')
echo "$size bytes"
