#!/bin/bash -x

echo "Welcome to Employee Wage computation Problem"

Wageperhour=20;
isFulltime=1;
isParttime=2;

randomcheck=$(( RANDOM%3 ))

case $randomcheck in
	$isFulltime)
		echo "Employee is Full Time"
		employeehrs=8;
		;;
	$isParttime)
		echo "Employee is Part Time"
		employeehrs=4;
		;;
	*)
		echo "Employee is Absent"
		employeehrs=0;
		;;
esac
Dailywage=$(($Wageperhour*$employeehrs))
echo $Dailywage
