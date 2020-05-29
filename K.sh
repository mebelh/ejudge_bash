read trash
while read N
do
    read arr
    arr=($arr)
    for ((i = 0; i < N; i++))
    do
        some=0
        sum=0
        for ((j = 1; j*2 <= arr[i]; j++))
        do
            if (( ${arr[i]} % $j == 0 ))
            then
                sum=$(( $sum + $j ))
            fi
        done
        if [[ ${arr[i]} -eq $sum ]]
        then
            echo $sum
            some=1
        fi
    done
    if (( $some == 0))
    then
        echo -1
    fi
done