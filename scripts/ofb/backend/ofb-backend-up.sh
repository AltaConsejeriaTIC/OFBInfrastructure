#!/usr/bin/env bash

DEPLOYMENT_TYPE=$1
BRANCH=$2

cd /root/backend

if [[ $DEPLOYMENT_TYPE == "tag" ]]; then
    rm -rf OFBBackend \
    && git clone -b development https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/OFBBackend.git \
    && cd OFBBackend \
    && git checkout -b tempbranch tags/$BRANCH \
    && cp /root/backend/wordpressDBConnection.js config \
    && cp /root/backend/wordpressDBParameters.js config \
    && cp /root/docker/backend/Dockerfile . \
    && docker build -t ofb-backend .
else
    if [[ -z "BRANCH" ]]; then
     BRANCH="development"
    fi

    rm -rf OFBBackend \
    && git clone -b $BRANCH https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/OFBBackend.git \
    && cd OFBBackend \
    && cp /root/backend/wordpressDBConnection.js config \
    && cp /root/backend/wordpressDBParameters.js config \
    && cp /root/docker/backend/Dockerfile . \
    && docker build -t ofb-backend .
fi