#!/bin/bash

set -x
cd 
ls -1 *.mp4 >BATCHWM.sh
while read line; do echo "./fader_wm.sh $line"; done <BATCHWM.sh >>BATCH.sh 

ls -1 "/media/jelle/Renske-BU01/PEERTUBE/wm_*.mp4" >>wmlist.txt
while read line; do
    md5sum $line | cut -c -32 > NAME
    echo "peertube up -n $(cat NAME) -f '$line'"
done < wmlist.txt >>wmlist.up.sh

# chmod +x wmlist.up.sh
# ./wmlist.up.sh
