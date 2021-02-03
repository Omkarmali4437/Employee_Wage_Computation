#!/bin/bash -x

echo "Welcome to Employee Wage computation Problem"

Wageperhour=20;
isFulltime=1;
isParttime=2;
numberofworkingdays=20;
totalworkingdays=0;

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
while [[ $totalworkingdays -lt $numberofworkingdays ]]
do
	((totalworkingdays++))
	Dailywage=$(($Wageperhour*$employeehrs))
	Monthlywage=$(($Wageperhour*$employeehrs*$totalworkingdays))
done
echo "Daily wage of a employee is: "$Dailywage
echo "Monthly wage of a employee is: "$Monthlywage
