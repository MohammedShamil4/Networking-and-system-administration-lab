# 4. Shell script to rename all ordinary files in a directory with filename.PID of shell

if [ $# -ne 0 ]
then
echo "Syntax is <$0>"
exit 1
fi
	for i in *
	do
	if [ -f $i ]
	then
	newname="$i.$$"
	mv $i $newname
	fi
	done 
	exit 0



<<com
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ ls -l
total 12
-rw-rw-r-- 1 ksb ksb 554 May 26 12:01 program1.sh
-rw-rw-r-- 1 ksb ksb 703 May 26 12:13 program2.sh
-rw-rw-r-- 1 ksb ksb 804 May 26 12:19 program3.sh

ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program4.sh 
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ ls -l
total 12
-rw-rw-r-- 1 ksb ksb 554 May 26 12:01 program1.sh.4021
-rw-rw-r-- 1 ksb ksb 703 May 26 12:13 program2.sh.4021
-rw-rw-r-- 1 ksb ksb 804 May 26 12:19 program3.sh.4021

com
