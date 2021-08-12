#!/bin/bash

ls -1tr dbdump.*.out | head -n-2 | xargs rm

echo 'select * from factoid_names ' \
	'left join factoid_values ' \
	'on factoid_names.factoid_id = factoid_values.factoid_id' |
	mysql -p'secret' botdb > dbdump.$$.out
date
echo
echo DONE
echo
