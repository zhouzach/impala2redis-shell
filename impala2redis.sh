#!/usr/bin/env bash

impala-shell -q 'select clientid from data_db_1487059346591.log;' | awk '{print "pfadd all_uv " $2}' | sed '1,3d' | sed '$d' | awk '{print "\*" NF; print "\$" length($1); print $1; print "\$" length($2); print $2; print "\$" length($3); print $3;}' | redis-cli --pipe
