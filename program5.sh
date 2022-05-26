# 5. Shell script to compare two files. If the files are identical delete one

if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
	echo "Enter a file name : "
	read a
	echo "Enter another file name : "
	read b
	cmp $a $b
	if [ $? -eq 0 ]
	then
	rm $b
	echo "Removed duplicate file"
	else
	echo "Duplicate file not exists"
	fi


<<com
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program5.sh 
Enter a file name : 
f1.txt
Enter another file name : 
f2.txt
Removed duplicate file

com
