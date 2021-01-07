#! /usr/bin/bash/

read -p "Enter Process ID : " pro
echo "Want to increase the priority Press 1 and to decrease Press 2."
read -p "Enter your choice : " sta
if [ $sta = 1 ]; then
	renice -n -20 -p $pro
elif [ $sta = 2 ]; then
	renice -n 19 -p $pro
else
	echo "Invalid"
fi
