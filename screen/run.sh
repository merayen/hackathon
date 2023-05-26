#ffmpeg -framerate 1 -pattern_type glob -i '*.png' -c:v libx264 -pix_fmt yuv420p out.mp4

HEI=0
for x in $(ls | sort | grep ".png$"); do
	NEW=$(printf "%03d\n" $HEI).png
	HEI=$((HEI+1))
	if [[ $NEW != $x ]]; then
		mv -v $x $NEW
	fi
done
