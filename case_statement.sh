#!/bin/bash

echo "This bash script demonstrates the use of case statements"

echo "Please enter a value from 1 to 3 (inclusive)"
read value

case $value in 
	1)	
		type="Samurai"
		hp=10
		attach=20
		;;
        2)      
                type="Prisoner"
                hp=10
                attach=20
                ;;
esac

echo "you have chosen $type with health points of $hp and $attach attack points"

