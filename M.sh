read params
params=($params)
N=${params[0]}
K=${params[1]}
if (( N <= K ))
then
	echo 2
elif (( (N * 2) % K == 0 ))
then 
	echo $(( (N * 2) / K ))
else
	echo $(( (N * 2) / K + 1 ))
fi