#! /usr/bin/bash

PASSED=$1

if [ -d "$PASSED" ]; then
	echo "$PASSED is a directory and content of the directory are : "
	ls -l $PASSED
	
elif [ -f "$PASSED" ]; then
	echo "$PASSED is a file and contents of file are : "
	cat $PASSED
else
	echo "$PASSED is not valid"
	exit 1
fi
