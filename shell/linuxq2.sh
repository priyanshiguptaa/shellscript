#! /usr/bin/bash
PASSED=$1
if [ -d "$PASSED" ]; then
	echo "$PASSED is a directory."
elif [ -f "$PASSED" ]; then
	echo "$PASSED is a regular file."
elif [ -c "$PASSED" ]; then
        echo "$PASSED is a character special file."
elif [ -b "$PASSED" ]; then
        echo "$PASSED is a block special file."
elif [ -p "$PASSED" ]; then
        echo "$PASSED is a pipe."
elif [ -S "$PASSED" ]; then
        echo "$PASSED is a socket."
elif [ -h "$PASSED" ]; then
        echo "$PASSED is a symbolic link."
else
	echo "$PASSED is not valid"
	exit 1
fi
