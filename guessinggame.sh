#!/bin/bash

curr_dir=${PWD##*/}
#can also be done with $PWD

ourNum=0
for FILE in $curr_dir
do
	let ourNum=$ourNum+1
done

echo "File directory iterated through, number of files is $ourNum"

#works to here 
	 
function guesser {

	echo "How many files are in the current directory?"
	read num
	if [[ num -lt ourNum ]]
	then
		echo "Your number was too small, try again"
		guesser
	elif [[ num -gt ourNum ]]
	then 
		echo "Your number was too large, try again"
		guesser
	else
		echo "Correct! Well done."
	fi 
	
}
guesser
