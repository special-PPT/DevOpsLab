#!/bin/bash
DayName=$(date +"%a")

echo "Office opening time for $DayName"

case $DayName in 
	Mon)
		echo "08:00 AM - 05:00PM"
		;;

	Tue)
                echo "08:00 AM - 05:00PM"
                ;;
	Wed)
                echo "08:00 AM - 05:00PM"
                ;;
	Sun)
                echo "It's a holiday"
                ;;
	Fir)
                echo "08:00 AM - 02:00PM"
                ;;
	Sat)
                echo "08:00 AM - 02:00PM"
                ;;
	*)
		;;

esac
