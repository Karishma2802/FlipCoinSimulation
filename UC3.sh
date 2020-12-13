#!/bin/bash

head_win=0
tail_win=0

for (( i=1;i>0;i++ ))
do
	random_check=$((RANDOM%2))
	if [ $random_check -eq 1 ]
	then
		head_win=$(( $head_win + 1 ))
		if [ $head_win -eq 21 ]
		then
			result=$((head_win - tail_win))
			echo "Head wins by $result difference"
			exit
		fi
	fi

	if [ $random_check -eq 0 ]
	then
		tail_win=$(( $tail_win + 1))
		if [ $tail_win -eq 21 ]
		then
			result=$((tail_win - head_win))
			echo "Tail wins by $result difference"
			exit
		fi
	fi
done
