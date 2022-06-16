# Shell script to copy a set of files given as pairs at command prompt

if [ `expr $# % 2` -ne 0 -o $# -eq 0 ]
then
	echo "syntax error"
	echo "<$0> <source file> <destination file> etc..."
	echo "Arguments must be even number"
	exit 1
fi

i=`expr $# / 2`

while [ $i -gt 0 ]
do

cp $1 $2


shift
shift
i=`expr $i - 1`
done
exit 0

<<com
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program12.sh f2.text pr
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ cat pr
gft ca
ab
ds
fgg
fgf
com
