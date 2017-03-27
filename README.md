impala2redis-shell
=================
    export data from impala into redis;
    have two solutions: impala2redis.sh and impala2redis_new.sh

Features
--------
   1.   awk: convert redis commands into protocal to increase efficiency
   2.   redis pipe
   3.   redis command: pfadd

Prerequisites
------------
    install impala and redis

Usage
-----
    git clone git@github.com:zhouzach/impala2redis-shell.git
    cd impala2redis-shell
    bash impala2redis.sh

FAQ
---
    1.  for impala2redis_new.sh, \r\n is based on OS version in awk print
