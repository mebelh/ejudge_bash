read n
dolg=2
tmp=0
D=2
for (( i = 0; i < n - 1; i++ ))
do
	dolg=$(( $dolg * 2 ))
	tmp=$(( $dolg + $D ))
	D=$(( $tmp - $tmp / 2 ))
done
Z=$(( $dolg - $tmp / 2 ))
echo $Z $D