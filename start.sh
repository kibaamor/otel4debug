#!/bin/bash

rm -fr ./logs
mkdir ./logs
pushd logs
for f in "traces" "metrics" "logs"
do
    touch $f.json
    chmod a+w $f.json
done
popd

docker compose down
docker compose up

# multitail ./logs/traces.json ./logs/metrics.json ./logs/logs.json

