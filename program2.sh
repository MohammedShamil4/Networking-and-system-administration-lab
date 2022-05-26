#2. Shell script to read 3 numbers and test whether they can be sides of a triangle

if [ $# -ne 0 ]
then
	echo "Syntax error"
exit
fi
	echo "Enter side a : "
	read a
	echo "Enter side b : "
	read b
	echo "Enter side c : "
	read c
	p=`expr $a + $b`
	q=`expr $a + $c`
	r=`expr $b + $c`
	if [ $p -gt $c ] && [ $q -gt $b ] && [ $r -gt $a ]
	then
	echo "It is a triangle"
	else
	echo "It is not a triangle"
	fi


<<com
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program2.sh 
Enter side a : 
1
Enter side b : 
3
Enter side c : 
5
It is not a triangle
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program2.sh 
Enter side a : 
5
Enter side b : 
6
Enter side c : 
7
It is a triangle
com
