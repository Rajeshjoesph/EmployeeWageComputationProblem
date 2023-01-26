echo  "Employee Wage Computation Problem"

fullTime=2
partTime=1
ratePerHour=20
random=$((RANDOM%3));

if [ $partTime -eq $random ];
then
	workHours=4;
	echo "Part time working hour: $workHours"
elif [ $fullTime -eq $random ];
then

	workHours=8;
	echo "Full time working hours: $workHours"
else
	workHours=0;
	echo "Employee Working Hours: $workHours"
fi
salary=$(($ratePerHour*$workHours))
echo "Employee Wages: $salary"

