#!/usr/bin/env bash

echo "--- GENERATING ---"
cd /opt/generator
./generate.sh protos config/config.json github.com/sriram323/Gateway

echo "--- RUNNING ---"
#cd /go/src/github.com/sriram323/Gateway/
#go build grpc-gateway.go
#go run grpc-gateway.go
