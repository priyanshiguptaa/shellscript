#! /usr/bin/bash
PASSED=$1
if [ -d "$PASSED" ]; then
	ls -lp "$PASSED" | sort -r -n -k5 | grep -v /
else
	echo "$PASSED is not valid"
	exit 1
fi
