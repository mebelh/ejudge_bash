read tresh
while read params
do
    params=($params)
    s=$(echo "(${params[0]}*2 + ${params[1]}*2)*${params[2]}" | bc)
    if(( $s % 16 == 0 ))
    then
        echo "$s / 16" | bc
    else
        echo "$s / 16 + 1" | bc
    fi
done