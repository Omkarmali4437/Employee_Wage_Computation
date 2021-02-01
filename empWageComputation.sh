#!/bin/bash -x

echo "Welcome to Employee Wage computation Problem"

randomcheck=$(( RANDOM%2 ))
if [[ $randomcheck -eq 1 ]]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
