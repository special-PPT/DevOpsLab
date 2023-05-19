#!/bin/bash

while getopts n:a: OPT
do
	case "${OPT}"
	in
		n) name=${OPTARG};;
		a) age=${OPTARG};;
		*) echo "Invalid option"
			exit1;;
			
	esac
done

echo "My name is $name and I am $age years old"

