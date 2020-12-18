#!/bin/bash

README.md:guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "The time and date of the running of the makefile was $(shell date) " >> README.md
	echo "<br>" >> README.md
	echo "<br>" >> README.md
	echo "The guessinggame.sh file contains the following number of lines:" >> README.md
	echo "<br>" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "<br>" >> README.md
	echo "<br>" >> README.md
	echo "That is all for now" >> README.md
	echo "<br>" >> README.md
clean:
	rm README.md
