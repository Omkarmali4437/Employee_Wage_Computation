#!/bin/bash -x

echo "Welcome to Employee Wage computation Problem"

Wageperhour=20;

randomcheck=$(( RANDOM%2 ))
if [[ $randomcheck -eq 1 ]]
then
	echo "Employee is Present"
	employeehrs=8;
	Dailywage=$(($Wageperhour*$employeehrs))
	echo $Dailywage
else
	echo "Employee is Absent"
	employeehrs=0;
	Dailywage=$(($Wageperhour*$employeehrs))
	echo $Dailywage
fi
