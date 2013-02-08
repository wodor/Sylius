#!/bin/sh
# 
test `ps aux | grep "\-L 3307" | wc -l` -lt 2 &&  echo "\ncreating tunnel, rerun to open mysql console\n[ENTER]" && vagrant ssh -- -L 3307:127.0.0.1:3306 -N &
mysql -h 127.0.0.1 -P3307 -u root
