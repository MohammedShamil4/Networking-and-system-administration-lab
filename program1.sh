# Shell script to test whether the given year is a leap year or not

if [ $# -gt 1 ]
then
echo syntax error
exit 1
fi

if [ $# -ne 1 ]
then 
yr=`date +%Y`
else
yr=$1
fi
d4=`expr $yr % 4`
d100=`expr $yr % 100`
d400=`expr $yr % 400`
if [ $d4 -eq 0 -a $d100 -ne 0 -o $d400 -eq 0 ]
then
 echo " $yr is a leap year "
else
 echo " $yr is not leap year "
fi


<<com

ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program1.sh
 2022 is not leap year 

ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program1.sh 2020
 2020 is a leap year 

com

