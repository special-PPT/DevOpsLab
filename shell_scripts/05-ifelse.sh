#!/bin/bash

echo "What is your name?"
read NAME
NAME="Robin"

# check the variable NAME has a value

if [[ ! -z "$NAME" ]]; then
	echo "Please enter your name."
	exit
else
       	echo "Hello $NAME"
fi
