#!/bin/bash

echo "Please Enter 5 subjects Marks:"
read sub1
read sub2
read sub3
read sub4
read sub5

average_mark=$(( (sub1 + sub2 + sub3 + sub4 + sub5) / 5 ))

if [[ $average_mark -ge 80 ]]; then
	echo "Grade A"
elif [[ $average_mark -ge 60 && $average_mark -lt 80 ]]; then
	echo "Grade B"
elif [[ $average_mark -ge 40 && $average_mark -lt 60 ]]; then
	echo "Grade C"
else
	echo "Grade F"
fi


