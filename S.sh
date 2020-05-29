read trash
while read n
do
    read -a arr

    if (( $n % 2 == 0 ))
    then
        f_half=( ${arr[@]:0:$(( ${#arr[@]} / 2 ))} )
        s_half=( ${arr[@]:$(( ${#arr[@]} / 2 )):$(( ${#arr[@]} / 2 ))} )
        f_half=( $(for a in "${f_half[@]}"; do echo "$a"; done | sort -n) )
		s_half=( $(for a in "${s_half[@]}"; do echo "$a"; done | sort -n -r) )
        arr=( ${f_half[@]} ${s_half[@]} )
    else
        cen_elem="$n / 2 |bc"
        f_half=( ${arr[@]:0:$(( ${#arr[@]} / 2 ))} )
        s_half=( ${arr[@]:$(( ${#arr[@]} / 2 + 1)):$(( ${#arr[@]} / 2 ))} )
        f_half=( $(for a in "${f_half[@]}"; do echo "$a"; done | sort -n) )
		s_half=( $(for a in "${s_half[@]}"; do echo "$a"; done | sort -n -r) )
        arr=( ${f_half[@]} ${arr[$cen_elem]} ${s_half[@]} )
    fi
    for (( i = 0; i < n; i++))
    do
        echo ${arr[$i]}
    done
done