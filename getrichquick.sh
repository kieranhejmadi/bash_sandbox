#! /bin/bash

echo "please enter your name"
#read name
echo "please enter your age"
read age
nano ~/.bashrc
echo "Hello, $name you are $age years old. You will be promoted in this many years"

echo $(($RANDOM % 10 + ($age/25)))
