regex=^\([_.]{1}[0-9]+[a-zA-Z]*_{0,1}\)$
read tresh
while read candidate
do
    if [[ $candidate =~ $regex ]]
	then
		echo VALID
	else
		echo INVALID
	fi
done