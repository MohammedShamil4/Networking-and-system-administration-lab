# Shell script to delete all lines if a file containing word linux

if [ $# -ne 0 ]
then
echo "syntax error, syntax is <$0>"
exit
fi
echo "Enter the file name: "
read file
term=`tty`
exec < $file
while read line
do
echo $line | grep linux > file2
if [ $? -eq 0 ] 
then    
continue
fi      
echo $line >> file1
done
mv file1 $file
rm file2
exec < $term

<<com
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ cat f1.text
linux gift
abcd
linux
xyz
sds linux
sadbs
ds
linux

ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ sh program9.sh
Enter the file name: 
f1.text
ksb@ksb-ThinkCentre-Edge72:~/shamil/script/programs$ cat f1.text
abcd
xyz
sadbs
ds
com
