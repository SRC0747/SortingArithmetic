#!/bin/bash
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
#Sorting the values in Descnding order.
for (( i=0; i<=3; i++ ))
do
	for (( j=$(($i+1)); j<=3; j++ ))
	do
		if [ result[$i] -lt result[$j] ]
		then
			temp=$((result[$i]))
			result[$i]=$((result[$j]))
			result[$j]=$temp
		fi
	done
done
echo "${result[@]}"

#Sorting the values in Ascending order
for (( i=0; i<=3; i++ ))
do
        for (( j=$(($i+1)); j<=3; j++ ))
        do
                if [ result[$i] -lt result[$j] ]
                then
                        temp=$((result[$i]))
                        result[$i]=$((result[$j]))
                        result[$j]=$temp
                fi
        done
done
echo "${result[@]}"
