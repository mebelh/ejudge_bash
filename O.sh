read number
sortnumber=$( echo $number | grep -o . | sort |tr -d "\n" )
char=${sortnumber:$(( (${#number} - 1)/2 )):1}
echo $char
number=$(echo $number | sed -r 's/'$char'//g' )
if (( ${#number} == 0 ))
then
	echo NULL
else
	echo $number
fi