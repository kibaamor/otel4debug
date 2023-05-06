#!/bin/bash

rm -fr ./logs
mkdir ./logs
cd logs
for f in "traces" "metrics" "logs"
do
    touch $f.json
    chmod a+w $f.json
done
cd ..

docker compose down
docker compose up

# multitail ./logs/traces.json ./logs/metrics.json ./logs/logs.json

