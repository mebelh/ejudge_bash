declare -A ar
for ((i = 0; i < 52; i++))
do
    ar[1,$i]=1;
done
for ((i = 2; i < 52; i++))
do
	for ((j = 1; j < 52; j++))
	do
		for ((k = 1; k < 52; k++))
		do
			if (( j % k == 0 ))
			then
				tmp=$(( i - 1 ))
				ar[$i,$j]=$(( ${ar[$i,$j]} + ${ar[$tmp,$k]} ))
			fi
		done
	done
done
read str
arr=( $str )
for ((i = 1; i <= ${arr[0]}; i++))
do
	sum=$(( $sum + ${ar[${arr[1]},$i]} ))
done
echo $sum