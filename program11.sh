# Shell script to print specified range of lines from given files

if [ $# -eq 0 ]
then 
	echo "Syntax error"
	echo "Syntax is <$0> <filename1> <filename2> etc.."
	exit 1
fi

c=$#
echo "Enter lower limit:"
read l
echo "Enter upper limit:"
read u

while [ $c -gt 0 ]
do 
file=$1
echo "$1 lines $l to $u"

cat $file | head -$u | tail -n +$l
c=`expr $c - 1`
shift
done
exit 0


<<com

ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program11.sh f1.text f2.text
Enter lower limit:
1
Enter upper limit:
4
f1.text lines 1 to 4
abcd
xyz
sadbs
ds
f2.text lines 1 to 4
gft ca
ab
ds
fgg

com
