#!/bin/bash  

TEMPDIR="/tmp/puzzleserver-dump"
mkdir -p "$TEMPDIR"
rm -f "$TEMPDIR"/foo*.jpg
for z in {1..10} ; do cp ../data/pic1.jpg "$TEMPDIR"/foo${z}.jpg ; done

time mogrify -adaptive-resize 2900x2500 "$TEMPDIR"/foo*.jpg
date
sleep 2
echo
echo DONE
echo

