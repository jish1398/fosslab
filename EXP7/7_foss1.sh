#!/bin/bash
clear
file="/home/exam/ulist.txt"
if [ -f "$file" ]
	then 
		echo "Found"
	else
		echo "Not Found"
fi
