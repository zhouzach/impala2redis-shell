#!/usr/bin/env bash

impala-shell -q 'select clientid from data_db_1487059346591.log;' | \
    awk '{print "pfadd all_uv " $2 "\r"}' | sed '1,3d' | sed '$d' | \
    redis-cli --pipe
