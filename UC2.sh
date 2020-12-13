#!/bin/bash

head_win=0
tail_win=0

for (( i=0;i<=20;i++ ))
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		((head_win++))
	else
		((tail_win++))
	fi
done

	echo "Head won $head_win times"
        echo "Tail won $tail_win times"
