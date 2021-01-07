#! /usr/bin/bash

sh=$(date "+%Y")
 
for i in 1 2 3 4
do
	digit=$(echo $sh | cut -c $i)
	case $digit in
		0) yr="${yr} zero" ;;
		1) yr="${yr} one" ;;
		2) yr="${yr} two" ;;
		3) yr="${yr} three" ;;
		4) yr="${yr} four" ;;
		5) yr="${yr} five" ;;
		6) yr="${yr} six" ;;
		7) yr="${yr} seven" ;;
		8) yr="${yr} eight" ;;
		9) yr="${yr} nine" ;;
	esac
done
echo "Current date : $(date "+%B %d,$yr(%A)")"
