simple=()
simple[1]=1
max=10
max=($max+1)

for ((i = 2; i < max+1; i++))
do
    simple[i]=0
    (( i++ ))
done

for((i = 2; i*i < max; i++))
do
    if (( simple[i] == 0 ))
    then
        for((j = i+i; j < max; j+=i))
        do
            simple[j]=1
        done
    fi
done

read trash
while read n
do 
    read items
    items=($items)
    j=0

    for((i=0; i < n; i++))
    do
        item=items[i]
        if((simple[item]!=0))
        then
            ((arr[j]=item))
            ((j++))
        fi
    done
    if((j==0))
        then
            echo -1
        else
            for((k=0; k<j; k++))
            do
                echo ${arr[k]}
            done
        fi
done



# for ((i = 2; i < max; i++))
# do
#     if((simple[i]!=0))
#     then
#         echo $i
#     fi
# done