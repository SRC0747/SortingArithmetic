#!/bin/bash -x
echo "Welcome to Arithmetic computation and Sorting problem."
read -p "Enter the value of a:" a
read -p "Enter the value of b:" b
read -p "Enter the value of c:" c
m=$(($a+($b*$c)))
n=$((($a*$b)+$c))
