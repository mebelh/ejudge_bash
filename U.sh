crash=0
read arr
arr=($arr)
for ((i = 1; i <= ${arr[0]}; i++))
do
    if [[ ${arr[i]} -lt 545 ]]
    then
        echo Crash $i
        crash=1
        break
    fi
done
if (( $crash == 0 ))
then
    echo No crash
fi