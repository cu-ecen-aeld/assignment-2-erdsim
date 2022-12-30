#!/bin/sh

writefile="$1"
writestr="$2"

if [ $# -eq 2 ]
then
	if [ ! -d "$writefile" ]
	then
		mkdir -p $(dirname "$writefile")
		touch "$writefile" | echo "$writestr" > "$writefile"
	else
		touch "$writefile" | echo "$writestr" > "$writefile"
	fi
else
	echo "Failed: Missing or extra arguments!"
	exit 1	
fi
