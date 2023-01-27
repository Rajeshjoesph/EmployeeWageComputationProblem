PART_TIME=1;
FULL_TIME=2;
MAX_WORK_MONTH=10;
RATE_PER_HOUR=20;
NUM_WORK_DAYS=20;

totalHour=0;

totalWorkDays=0;

while [[ $totalHour -lt $MAX_WORK_MONTH  && $totalWorkDays -lt $NUM_WORK_DAYS ]]
do
	((totalWorkDays++))
	employeeCheck=$((RANDOM%3));
	case $employeeCheck in
		$FULL_TIME)
			employeeHours=8
			;;
		$PART_TIME)
			employeeHours=4
			;;
		*)
			employeeHours=0
			;;
	esac

	empTotalHours=$(($empTotalHours+$employeeHours))
done
	totalSalary=$(($empTotalHours*$RATE_PER_HOUR))

	echo "Employee Total Working Hours: "$empTotalHours
	echo "Employee Total Salary: "$totalSalary
