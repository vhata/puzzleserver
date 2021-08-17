#!/bin/bash

TEMPDIR="/tmp/puzzleserver-dump"
mkdir -p "$TEMPDIR"
echo 'select * from factoid_names ' \
	'left join factoid_values ' \
	'on factoid_names.factoid_id = factoid_values.factoid_id' |
	mysql botdb > "$TEMPDIR"/dbdump.out
date
sleep 2
echo
echo DONE
echo
