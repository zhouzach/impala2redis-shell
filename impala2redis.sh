#!/usr/bin/env bash

impala-shell -q 'select clientid from data_db_1487059346591.log;' | awk '{print "pfadd all_uv " $2}' | sed '1,3d' | sed '$d' | sh command2protocol.sh | redis-cli --pipe
