#!/bin/bash -x
echo "Welcome to Arithmetic computation and Sorting problem."
declare -A arithmetic
declare -a result
read -p "Enter the value of a:" a
read -p "Enter the value of b:" b
read -p "Enter the value of c:" c
m=$(($a+($b*$c)))
n=$((($a*$b)+$c))
p=$(($c+($a/$b)))
q=$((($a%$b)+$c))
arithmetic[compute1]="$m"
arithmetic[compute2]="$n"
arithmetic[compute3]="$p"
arithmetic[compute4]="$q"
echo "${arithmetic[@]}"
result=${arithmetic[@]}
echo "${result[@]}"
