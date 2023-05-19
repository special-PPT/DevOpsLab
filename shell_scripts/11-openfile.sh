#!/bin/bash
FILE=/etc/passwd
while read -r line;
do
	echo $line | wc -c
done < "$FILE"
