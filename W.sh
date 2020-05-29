read N
fish=(0 0 1 11 50)
for ((i = 5; i < N + 5; i++))
do
    fish[$i]=$(( fish[i - 1] * 4))
done
echo ${fish[N + 2]}