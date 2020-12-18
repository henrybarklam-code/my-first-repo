#!/bin/bash

README.md:guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	NOW=$( date "+%F_%H:%M:%S" )
	echo "The time and date of the running of the makefile is $NOW " >> README.md
	echo "The guessinggame.sh file contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "That is all for now" >> README.md
clean:
	rm README.md
