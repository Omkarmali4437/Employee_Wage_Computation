#!/bin/bash -x

echo "Welcome to Employee Wage computation Problem"

randomcheck=$(( RANDOM%2 ))
if [[ $randomcheck -eq 1 ]]
then
	echo "Present"
else
	echo "Absent"
fi
