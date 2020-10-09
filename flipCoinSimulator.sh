#!/bin/bash -x

echo "FLIP COIN SIMULATOR"

if [ $((RANDOM%2)) -eq 0 ]
then
	echo "HEADS Won"
else
	echo "TAILS Won"
fi
