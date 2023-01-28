echo "Welcome to Employee wage Compution problem"

PART_TIME=1;
FULL_TIME=2;
employeeHours=0;
totalSalary=0;
totalWorkHours=0;
ratePerHour=20;
WorkDays=20;
day=1;

declare -A day

function getworkingHours() {
         case $randomCheck in
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
while [[ $day -le 20 && $totalWorkHours -lt 100	]]
do
	randomCheck=$((RANDOM%3));
	workHour=$(getworkingHours $randomCheck)
	totalWorkHour=$(($totalWorkHour+$workHour))

	if [ $totalWorkHour -gt 100 ]
	then
		totalWorkHour=$(($totalWorkHour - $workHour));
		break
	fi
	salary=$(($ratePerHour*$workHour))
	totalSalary=$(($totalSalary+$salary))
	((day++))
done

echo "Employee Daily Salary:" ${salary[*]}
echo "employee total Salary:" ${totalSalary[*]}
echo "Employee Day  Salary:" ${day[*]}

echo "employee total Work Hours:" $totalWorkHour
