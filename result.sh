#!/bin/bash

calculate_total(){
	total=0
	for mark in $marks
	do
		total=$((total + mark))
	done

	echo "Total marks : $total"
}

calculate_average(){
	average=$((total / 3))
	echo "Average :" $average
}


echo "ENTER USERNAME :"
read name



echo "MARKS FOR THREE SUBJECTS" 

read -p "Subject 1 :" mark1
read -p "subject 2 :" mark2
read -p "subject 3 :" mark3

marks="$mark1 $mark2 $mark3"

echo "Student : " $name 
echo "subject marks : "

for mark in $marks
do 
	echo "$mark"  
done


calculate_total
calculate_average 


if [ $average -ge 40 ]
then
	echo "PASSED"  
else
	echo "FAILED" 
fi
echo "Hi $name" > input.txt
