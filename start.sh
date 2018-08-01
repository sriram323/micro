#!/usr/bin/env bash

echo "--- GENERATING ---"
cd /opt/generator
./generate.sh protos config/config.json github.com/sriram323/micro

echo "--- RUNNING ---"
#cd /go/src/github.com/sriram323/micro/
#go build grpc-gateway.go
#go run grpc-gateway.go
