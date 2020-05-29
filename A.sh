read trash
while read item
do
    item=$(seq -s "*" 1 $item |bc)
    item=$(echo $item | sed -r 's/.\ //g' )
echo $item
done
