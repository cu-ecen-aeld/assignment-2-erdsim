#!/bin/sh

filesdir="$1"
searchstr="$2"

if [ $# -eq 2 ]
then
	if [ -d "$filesdir" ]
	then	
		number_of_files=$(ls "$filesdir" | wc -l)
		number_of_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)
		echo "The number of files are ${number_of_files} and the number of matching lines are ${number_of_lines}."
	else
		echo "Failed: There is NO directory on the filesystem "
		exit 1
	fi	

else
	echo "Failed: Missing or extra arguments!"
	exit 1	
fi
