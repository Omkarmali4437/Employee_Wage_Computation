#!/bin/bash -x

echo "Welcome to Employee Wage computation Problem"

#Constants
Wageperhour=20;
isFulltime=1;
isParttime=2;
maximumhrs=100;
numberofworkingdays=20;

#variables
totalworkingdays=0;
totalworkkhrs=0;
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
while [[ $totalworkingdays -lt $numberofworkingdays &&
	$totalworkhrs -lt $maximumhrs ]]
do
	((totalworkingdays++))
	totalworkhrs=$(($totalworkhrs+$employeehrs))
	Monthlywage=$(($Wageperhour*$totalworkhrs*$totalworkingdays))
done

echo "Monthly wage of a employee is: "$Monthlywage
