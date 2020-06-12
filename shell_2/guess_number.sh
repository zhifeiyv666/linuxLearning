#!/bin/bash

a=$((RANDOM%100))
echo -n "Game guess number started! Guess it !"

while :
do
	read -p "Your guess:" guess
	if (( $guess<$a ))
	then echo "Smaller!"
	elif (( $guess>$a ))
	then echo "Bigger!"
	else
	echo "Bingo! You guess it! The right number is $a"
	break;
	fi
done
