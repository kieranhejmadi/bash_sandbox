#!/bin/bash

for x in nanoporetech.com http://cdn.oxfordnanoportal.com/apt networkchuck.com
do 
	if ping -q -c 2 -W 4 $x > /dev/null; then
		echo "$x is up"
	else
		echo "$x is down"
	fi
done

for x in {1..10};
do
	if [[ $x == 6 ]]; then
		echo "wow x is 6!"
		continue
		
	fi
	echo "x is currently $x"
done
