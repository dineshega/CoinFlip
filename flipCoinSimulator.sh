#!/bin/bash -x

h=0
t=0
read -p "how many times should coin flip enter a number more than 60: " flip
a=0
while [[ $a -lt $flip ]] 
do
  a=$((a+1))
  fliped=$((RANDOM%2))
	if [ $fliped -eq 0 ]
	then
			echo "HEADS"
			h=$((h+1))
	else
			echo "TAILS"
			t=$((t+1))
	fi
	if [ $h -eq 21 ]
	then
		echo "Heads Won"
		h=$((h-t))
		echo "by how much: " $h
		a=$flip
	elif [ $t -eq 21 ]
	then
		echo "Tails Won"
		t=$((t-h))
		echo "by how much: " $t
		a=$flip
	fi
done