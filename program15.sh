<<com
Shell script to perform a menu driven program to display
a) All ordinary files
b) All directory files
c) All special files
d) All files readable to UGO
e) All files writable to UGO
f) All files executable to UGO
com




if [ $# -ne 0 ]
then
	echo "Syntax error"
	echo "$0"
	exit
fi


while :
do
echo "\n1.Audinary files"
echo "2.Directory files"
echo "3.Special files"
echo "4.Readable files"
echo "5.Writable files"
echo "6.Executable files"
echo "-----------------------"
echo "\nselect your option:"
read opt

case $opt in

1) echo "Audinary files\n"
for file in *
do
	if [ -f $file ]
	then
		echo "$file"
	fi
done
;;
2) echo "directory files\n"
for file in *
do
        if [ -d $file ]
        then
                echo "$file"
        fi
done
;;
3) echo "Special files\n"
for file in *
do
        if [ -s $file ]
        then
                echo "$file"
        fi
done
;;
4) echo "Readable files\n"
for file in *
do
        if [ -r $file ]
        then
                echo "$file"
        fi
done
;;
5) echo "Writable files\n"
for file in *
do
        if [ -w $file ]
        then
                echo "$file"
        fi
done
;;
6) echo "Exicutable files\n"
for file in *
do
        if [ -x $file ]
        then
                echo "$file"
        fi
done
;;
*)echo "Exiting...."
exit
;;
esac
done



<<com
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program15.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
1
Audinary files

f1.text
f2.text
f3.text
pr
program1.sh
program10.sh
program11.sh
program12.sh
program13.sh
program14.sh
program15.sh
program2.sh
program3.sh
program4.sh
program5.sh
program6.sh
program7.sh
program8.sh
program9.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
2
directory files


1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
3
Special files

f1.text
f2.text
f3.text
program1.sh
program10.sh
program11.sh
program12.sh
program13.sh
program14.sh
program15.sh
program2.sh
program3.sh
program4.sh
program5.sh
program6.sh
program7.sh
program8.sh
program9.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
4       
Readable files

f1.text
f2.text
f3.text
pr
program1.sh
program10.sh
program11.sh
program12.sh
program13.sh
program14.sh
program15.sh
program2.sh
program3.sh
program4.sh
program5.sh
program6.sh
program7.sh
program8.sh
program9.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
5
Writable files

f1.text
f2.text
f3.text
pr
program1.sh
program10.sh
program11.sh
program12.sh
program13.sh
program14.sh
program15.sh
program2.sh
program3.sh
program4.sh
program5.sh
program6.sh
program7.sh
program8.sh
program9.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
6
Exicutable files


1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
7
Exiting....
com
