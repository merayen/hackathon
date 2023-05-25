exit
HEI=0
for x in $(ls | sort -n | grep ".png$"); do
	NEW=$(printf "%03d\n" $HEI).png
	HEI=$((HEI+1))
	mv $x $NEW
done
