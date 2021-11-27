#!/bin/bash

echo "Inputfile: $1"
mediainfo $1 > $1.before.txt
/snap/bin/ffmpeg -y -i "$1" -vf "scale=480:-1" "$2"
/snap/bin/ffmpeg -y -i "$2" -framerate 30000/1001 -loop 1 -i logo.png -filter_complex "[1:v] fade=out:st=3:d=1:alpha=1 [ov]; [0:v][ov] overlay=10:10 [v]" -map "[v]" -map 0:a -c:v libx264 -c:a copy -shortest "$1"
echo "Outputfile: $1"
mediainfo $1 >$1.after.txt
rm "$2"

