#!/bin/bash

if [ ! -e randump ] ; then
  dd bs=10M count=100 if=/dev/urandom of=randump
fi
rm -f randumpdest
dd bs=10M count=50 if=randump of=randumpdest
date
echo
echo DONE
echo
