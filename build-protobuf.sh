#!/usr/bin/env bash

echo "Building protobuf"

DEPENDENCIES="git curl build-base autoconf automake libtool"

apk add --no-cache ${DEPENDENCIES}
git clone https://github.com/google/protobuf --depth 1 -b ${PROTOBUF_BRANCH}
cd protobuf
./autogen.sh
./configure --prefix=/usr
make -j 3
make check
make install
cd ..
rm -rf protobuf
apk del ${DEPENDENCIES}
apk add --update libstdc++
rm -rf /var/cache/apk/*
DB_PASSWORD=AP
API_KEY=iaCELgL.0imfnc4mVLWwsAawjYr4Rx-Bf50DDptlz
