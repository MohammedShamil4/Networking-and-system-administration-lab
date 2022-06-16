 # Shell script to display the content of a directory file in windows style

if [ $# -ne 0 ]
then
	 echo "Syntax error"
	 echo "< $0 >"
	exit
fi
ter=`tty`
ls -l > lsl
exec < lsl
cd=0
while read line
do
	
 	cd=`expr $cd + 1`
 	if [ $cd -eq 1 ]
 	then
		echo $line
 		continue
 	fi
	
	i=`echo $line | cut -d " " -f 9-`
	t=`date +%d/%m/%Y"  "%r -r "$i"`
	b=`echo $line | cut -d " " -f 5`
	if [ -d "$i" ]
	then
		echo  "$t\t<DIR>\t  $b\t   $i"	   
	else
	
		echo  "$t\t     \t  $b\t   $i"	
	fi
done
	
exec < $ter	 
rm lsl

<<com

ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program10.sh
total 52
13/06/2022  02:31:28 PM IST	     	  18	   f1.text
06/06/2022  03:34:19 PM IST	     	  10	   f2.text
06/06/2022  03:35:58 PM IST	     	  39	   f3.text
13/06/2022  02:32:51 PM IST	     	  0	   lsl
13/06/2022  02:32:41 PM IST	     	  518	   program10.sh
26/05/2022  12:01:51 PM IST	     	  554	   program1.sh
26/05/2022  12:13:16 PM IST	     	  703	   program2.sh
26/05/2022  12:19:08 PM IST	     	  804	   program3.sh
26/05/2022  12:29:59 PM IST	     	  766	   program4.sh
06/06/2022  03:37:55 PM IST	     	  503	   program5.sh
26/05/2022  12:36:28 PM IST	     	  522	   program6.sh
09/06/2022  11:39:55 AM IST	     	  587	   program7.sh
26/05/2022  12:53:16 PM IST	     	  421	   program8.sh
13/06/2022  02:31:39 PM IST	     	  662	   program9.sh

com
