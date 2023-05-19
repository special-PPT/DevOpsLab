#!/bin/bash

for i in `ls .`
do 
	echo "$i"
	echo ""
	cat $i
	echo "*******************"
	echo ""
done
