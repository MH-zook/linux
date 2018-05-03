#!/bin/bash
num=$(expr $RANDOM % 1000)
times=0
echo "Range between 0 ~ 999"
while true
do
	read -p "Please enter your number:" input_num
	let times++
	if [ $input_num -eq $num ]
	then
		echo "Congratulations, enter correctly,time is $times"
		exit 0
	elif [ $input_num -lt $num ]
	then
		echo " Too low"
	else
		echo "Too high"
	fi
done
