#!/bin/bash

set -x
eval "$(cat ~/.bashrc | tail -n +10)"
#source ~/.bashrc
#alias peertube="cd /home/jelle/Video\'s/PeerTube/ && node ./dist/server/tools/peertube.js"

peertube up -n 1b1dbaf3f8daf7a63dfba3b3001a0b72 -f '/media/jelle/Renske-BU01/PEERTUBE/INPUT/wm_MVI_3410.mp4'
peertube up -n 2f8755310ac71b361cc248827c173bdd -f '/media/jelle/Renske-BU01/PEERTUBE/INPUT/wm_MVI_3411.mp4'
peertube up -n ddf2175d892df5b0a8f0edcdd95b4e13 -f '/media/jelle/Renske-BU01/PEERTUBE/INPUT/wm_MVI_3412.mp4'
peertube up -n 7676f83cdcb77be8bf00e87d813cde05 -f '/media/jelle/Renske-BU01/PEERTUBE/INPUT/wm_MVI_3413.mp4'
peertube up -n 70bd0801b52465834eb6ca8419358209 -f '/media/jelle/Renske-BU01/PEERTUBE/INPUT/wm_MVI_3414.mp4'
