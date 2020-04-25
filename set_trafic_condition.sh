#!/bin/bash

DATA_NODE_1_CONDITIONS='rate=1mbps&loss=10%'
DATA_NODE_2_CONDITIONS='rate=512kbps'
DATA_NODE_3_CONDITIONS='loss=40%'

docker exec docker-tc curl -d"$DATA_NODE_1_CONDITIONS" localhost:4080/datanode1
docker exec docker-tc curl -d"$DATA_NODE_2_CONDITIONS" localhost:4080/datanode2
docker exec docker-tc curl -d"$DATA_NODE_3_CONDITIONS" localhost:4080/datanode3
