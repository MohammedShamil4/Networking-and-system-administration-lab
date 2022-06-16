#ncr program

if [ $# -ne 0 ]
then 
	echo "Syntax error. Syntax is <$0>"
	exit 1
fi



fa(){
n=$1
f=1
	while [ $n -gt 0 ]
	do	
		f=`expr $f \* $n`
		n=`expr $n - 1`
	done
return $f
}

ncr(){
n1=$1
r1=$2
fa $n1
nf=$?

n_r=`expr $n1 - $r1`
fa $n_r
nrf=$?

fa $r1
rf=$?

rnr=`expr $nrf \* $rf`
nc=`expr $nf / $rnr`
return $nc
}

echo "enter num n: "
read n2
echo "enter num r: "
read r

ncr $n2 $r
echo "$n2 C $r=$?"




<<com
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program16.sh
enter num n: 
4
enter num r: 
2
4 C 2=6

com
