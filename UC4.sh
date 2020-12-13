#!/bin/bash

head_win=0
tail_win=0

for (( i=1;i>0;i++ ))
do
	random_check=$((RANDOM%2))
	if [ $random_check -eq 1 ]
	then
		head_win=$(( $head_win + 1 ))
		result=$((head_win - tail_win))
		if [ $result -eq 10 ]
		then
			echo "Head wins by 2 digit difference"
			echo $i
			exit
		fi
	fi

	if [ $random_check -eq 0 ]
        then
                tail_win=$(( $tail_win + 1 ))
                result=$((tail_win - head_win))
                if [ $result -eq 10 ]
                then
                        echo "Tail wins by 2 digit difference"
                        echo $i
                        exit
                fi
        fi
done
