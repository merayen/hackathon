ffmpeg -framerate 1 -pattern_type glob -i '*.png' -c:v libx264 -vf scale=1280:720 -pix_fmt yuv420p out.mp4

