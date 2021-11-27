#!/bin/bash


# cd $1
# find . -maxdepth 1 -type f |head -10|xargs cp -t "$destdir"

ls -1 *.mp4 >BATCHWM.sh
cat SHEB >BATCH.sh
while read line; do echo "./mediaconvert.sh $line TEMP.mp4"; done <BATCHWM.sh >>BATCH.sh

chmod +x BATCH.sh

./BATCH.sh

./loopsum.sh

chmod +x wmlist.up.sh

cat wmlist.up.sh

# Cleanup

# Next files

./mv_list_mp4.sh 