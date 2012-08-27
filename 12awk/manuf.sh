if [ $# != 2 ] #mut have blanak 
	then
		echo "Usage:manuf.sh field file"
		exit 1
fi

gawk<$2 ' {count[$'$1']++}
END	{for (item in count) printf "%-20s%-20s\n",item,count[item]}'|sort


