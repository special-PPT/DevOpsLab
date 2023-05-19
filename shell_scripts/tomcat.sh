#!/bin/bash
TOMCAT_BIN_PATH="/root/shell_scripts/apache-tomcat-10.1.8/bin"

if [ $# -ne 1 ]; then
	echo "Input: ./tomcat.sh [start|stop|restart|status]"
	exit 1
fi

get_tomcat_pid() {
	local tomcat_pid=$(ps aux | grep -v grep | grep "tomcat" | awk '{print $2}')
	echo "$tomcat_pid"
}

tomcat_pid=$(get_tomcat_pid)


case "$1" in 
	"start")
 		echo "Starting Tomcat ..."
		cd "$TOMCAT_BIN_PATH" || exit
		./startup.sh
		;;
	"stop")
		echo "Stopping Tomcat ..."
		cd "$TOMCAT_BIN_PATH" || exit
		./shutdown.sh
		;;
	"restart")
                echo "Restarting Tomcat ..."
		cd "$TOMCAT_BIN_PATH" || exit

		if [ -n "$tomcat_pid" ]; then
			echo "Tomcat is Runing, First Stop ..."
			./startup.sh
		else
			echo "Tomcat has Stopped, Restarting ..."
			./shutdown.sh
			sleep 5
			./startup.sh
		fi
			;;
	"status")
                echo "Tomcat Status ..."	
                cd "$TOMCAT_BIN_PATH" || exit
		if [  -n "$tomcat_pid" ]; then
			echo "Tomcat is running. PID: $tomcat_pid"
		else
			echo "Tomcat is not running."
		fi
                ;;
	*)
		echo "Unknown command: $1"
		exit 1
		;;
esac

exit 0

