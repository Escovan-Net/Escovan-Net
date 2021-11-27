#!/bin/bash

echo "Inputfile: $1"
/snap/bin/ffmpeg -y -i "$1" -vf "scale=512:-1" "TEMP_$1"
/snap/bin/ffmpeg -y -i "TEMP_$1" -framerate 30000/1001 -loop 1 -i logo.png -filter_complex "[1:v] fade=out:st=3:d=1:alpha=1 [ov]; [0:v][ov] overlay=10:10 [v]" -map "[v]" -map 0:a -c:v libx264 -c:a copy -shortest "wm_$1"
echo "Outputfile: $1"
