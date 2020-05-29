banknots=(10 20 50 100 200 500)
read tresh
while read dollars
do
    if((dollars % 10 != 0))
    then
        echo -1
    else
        count=0
        for((i=${#banknots[@]}-1; i > -1; i--))
        do
            count=$(( $count + $dollars / ${banknots[$i]} ))
            dollars=$(( $dollars % ${banknots[$i]} ))
        done
        echo $count
    fi
done