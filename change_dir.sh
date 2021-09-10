#change directory with custom exit code
echo "Change into dir and list results"

DIR=$1

cd $DIR 2>/dev/null

if [ "$?" == "0" ]
then
	echo "Change in to $DIR nad list: "
	ls -al
else
	exit 111
	echo $?
fi
