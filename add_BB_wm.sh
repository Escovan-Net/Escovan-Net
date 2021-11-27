#!/bin/bash

echo "Inputfile: $1"
ffmpeg -i "$1" -vf "scale=512:-1" "$1-sm.mp4"
ffmpeg -i "$1-sm.mp4" -y -vf "drawtext=text='(c) 2020-2021 BeestenBoeltje.NL':x=10:y=H-th-10:fontfile=/usr/share/fonts/truetype/tlwg/TlwgTypewriter-Bold.ttf:fontsize=12:fontcolor=yellow:shadowcolor=black:shadowx=5:shadowy=5" "wm_$1"
echo "Outputfile: $1"
