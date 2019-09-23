#!/bin/bash

RESPONSE=$(curl -u admin:randompassword12345 -s -X POST http://172.42.42.101:9000/api/cluster/metrics/multiple  -H "Content-Type: application/json" -d @json.data)

echo $RESPONSE
