#!/bin/bash

ls *.mp4 -1 >>wmlist.txt
while read line; do
    md5sum $line | cut -c -32 > NAME
    echo "peertube up -n '$line' -L nl -c 1 -d $(cat NAME) -f '$PWD/$line'"
done < wmlist.txt >>wmlist.up.sh

