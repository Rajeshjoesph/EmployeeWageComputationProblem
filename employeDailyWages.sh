echo "Employee Wage Computation Problem"

isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ];
then 
	ratePerHour=20;
	workingHour=8;
	salary=$(($ratePerHour*$workingHour));
	echo "$salary"
else
	salary=0;
	echo "$salary"
fi
