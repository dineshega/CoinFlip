#!/bin/bash -x

h=0
t=0
read -p "how many times should coin flip enter a number: " flip
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
done
echo "no of times heads won: " $h
echo "no of times tails won: " $t
