#!/bin/bash

TEMPDIR="/tmp/puzzleserver-dump"
INFILE="${TEMPDIR}/randump"
OUTFILE="${TEMPDIR}/randumpdest"
if [ ! -e "$INFILE" ] ; then
  dd bs=10M count=100 if=/dev/urandom of="$INFILE"
fi
rm -f "$OUTFILE"
dd bs=10M count=50 if="$INFILE" of="$OUTFILE"
date
sleep 2
echo
echo DONE
echo
