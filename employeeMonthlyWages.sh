partTime=1;
fullTime=2
totSalary=0;
ratePerHour=20;
totWorkDays=20;
for(( day=1; day<=$totWorkDays; day++))
do
	employeeCheck=$((RANDOM%3));
		case $employeeCheck in
			$fullTime)
				employeeHour=8
				;;
			$partTime)
				employeeHour=4
				;;
			*)
			employeeHour=0
			;;
		esac
		salary=$(($employeeHour*$ratePerHour));
		totalSalary=$(($totalSalary+$salary));
done
echo "Employee Salary "$salary
echo "Employee Total Salary "$totalSalary
