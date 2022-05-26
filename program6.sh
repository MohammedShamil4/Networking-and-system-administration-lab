# 6. Shell script to count the number of words and lines in a file

if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
	echo Enter file name
	read fname
	ter=`tty`
	exec < $fname
	i=0
	j=0
	while read line
	do 
	i=`expr $i + 1`
		for c in $line
	do
		j=`expr $j + 1`
	done
	done
	echo "No. of lines in $fname : $i"
	echo "No. of words in $fname : $j"
	exec < $ter
	
<<com

ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program6.sh 
Enter file name
f3.txt
No. of lines in f3.txt : 2
No. of words in f3.txt : 3

com
