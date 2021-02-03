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

function getworkhrs(){
	case $1 in
		$isFulltime)
			employeehrs=8;
			;;
		$isParttime)
			employeehrs=4;
			;;
		*)
			employeehrs=0;
			;;
	esac
	echo $employeehrs
}

while [[ $totalworkingdays -lt $numberofworkingdays &&
	$totalworkhrs -lt $maximumhrs ]]
do
	((totalworkingdays++))
	employeehrs="$(getworkhrs $randomcheck)"
	totalworkhrs=$(($totalworkhrs+$employeehrs))
	Monthlywage=$(($Wageperhour*$totalworkhrs*$totalworkingdays))
done

echo "Monthly wage of a employee is: "$Monthlywage
