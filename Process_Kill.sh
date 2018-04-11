top -b -n 1 > pro.txt
sed -e '1,7d' < pro.txt > pro1.txt   # to get the top memory and cpu usage
#head -n 1 pro1.txt > pro.txt
max_cpu="$1"
max_mem="$2"

filename=pro1.txt
while read -r line
do
    name="$line"
    arr=($name)
    pid=${arr[0]}
    cpu=${arr[8]}
    mem=${arr[9]}

echo "$cpu"  
echo "$mem"


if [[ $(echo "cpu > $max_cpu" | bc -l) ]]
    then
		kill -9 $pid
elif  [[ $(echo "mem > $max_mem" | bc -l) ]] 
    then
        kill -9 $pid
else
        echo "SIZE has not yet exceeding"
fi  
done < "$filename"
