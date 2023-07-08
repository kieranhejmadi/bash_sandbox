#!/bin/bash

echo "This is my bash scripting to play around with conditional statements"

test=$(( $RANDOM % 2 ))
if [[ $test  == 1 ]]; then
	echo "This random example was true"
else
	echo "This random example was false"
fi

read or
if [[ $test  == 1 || $or == "cheat"  ]]; then

elif
        echo " false"
fi


