#!/bin/bash
TIME=$1
MSG=$2

while true; do
 if [ $MSG == "0" ]; then curl -XPOST http://172.42.42.101:12201/gelf -p0 -d '{"short_message":"Hello there", "host":"example.org", "facility":"testul", "_foo":"bar"}'; fi;
 if [ $MSG == "1" ]; then curl -XPOST http://172.42.42.101:12201/gelf -p0 -d '{"short_message":"Hello there", "host":"liviu.org", "facility":"test", "_foo":"bar"}'; fi;
 sleep $TIME
done
