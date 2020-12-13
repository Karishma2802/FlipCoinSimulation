#!/bin/bash

Result=$((RANDOM%2))

if [[ $Result -eq 1 ]]
then
	echo "Heads"
else
	echo "Tail"
fi
