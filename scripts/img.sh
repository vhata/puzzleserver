#!/bin/bash  

rm -f foo*.jpg
for z in {1..10} ; do cp pic1.jpg foo${z}.jpg ; done

time mogrify -adaptive-resize 2900x2500 foo*.jpg
date
echo
echo DONE
echo

