#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage ./run_snippet.sh [compiler]"
	exit
fi

if [ "$1" = "javac" ];
	then
	echo "Java"
	subl a.java
	while [ ! -f "a.java" ]
		do
		echo "file not found."
	done
	echo "file found."
	echo "Press enter to compile and run after saving file"

	read -rsp $'Press q to quit, any other to compile and run \n' -n1 key
	while true
	do
		if [ "$key" = 'q' ]
		then
			echo "Exiting"
			exit 0
		else
			echo "Compiling and running"
			echo "-----------------------------------------------------"
			javac a.java
			java a
			echo "-----------------------------------------------------"
			read -rsp $'Press q to quit, any other to compile and run \n' -n1 key
		fi
	done

elif [ $(echo "$1" | cut -c1-3) = "gcc" ]
	then
	echo "C"

elif [ $(echo "$1" | cut -c1-3) = "g++" ]
	then
	echo "C++"

fi



