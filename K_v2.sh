bril=( 6 28 496 8128 33550336 )
read trash
while read N
do
    justOne=0
    read arr
    arr=($arr)
    for ((i = 0; i < N; i++))
    do
        for ((j = 0; j < 5; j++))
        do
            if (( ${arr[i]} == ${bril[j]} ))
            then
                echo ${bril[j]}
                justOne=1
                break
            fi
        done
    done
    if (($justOne != 1))
    then
        echo -1
    fi
done