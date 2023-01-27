PART_TIME=1;
FULL_TIME=2;
MAX_WORK_MONTH=4;
RATE_PER_HOUR=20;
NUM_WORK_DAYS=20;
totalHour=0;
totalWorkDays=0;
function workingHours() {
	 case $1 in
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
	echo $employeeHours
}
while [[ $totalWorkHours -lt $MAX_WORK_MONTH  && 
	$totalWorkDays -lt $NUM_WORK_DAYS ]]
do
	((totalWorkDays++))
	employeeworkHours="$( workingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$employeeworkHours))
done
	totalSalary=$(($totalWorkHours*$RATE_PER_HOUR));
echo "Employee Working Hours: "$employeeworkHours
echo "Employee Total Working Hours: "$totalWorkHours
echo "Employee Total Salary: "$totalSalary
