#!/bin/bash -x

echo "Welcome to Employee Wage computation Problem"

Wageperhour=20;

randomcheck=$(( RANDOM%3 ))
if [[ $randomcheck -eq 1 ]]
then
	echo "Employee is Full Time"
	employeehrs=8;
	Dailywage=$(($Wageperhour*$employeehrs))
	echo $Dailywage
elif [[ $randomcheck -eq 2 ]]
then
	echo "Employee is Part Time"
	employeehrs=4;
	Dailywage=$(($Wageperhour*$employeehrs))
	echo $Dailywage
else
	echo "Employee is Absent"
	employeehrs=0;
	Dailywage=$(($Wageperhour*$employeehrs))
	echo $Dailywage
fi
