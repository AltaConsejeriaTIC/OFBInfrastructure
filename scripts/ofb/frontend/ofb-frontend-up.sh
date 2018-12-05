#!/usr/bin/env bash

DEPLOYMENT_TYPE=$1
BRANCH=$2

cd /root/frontend

if [[ $DEPLOYMENT_TYPE == "tag" ]]; then
    rm -rf OFBTriviaFront \
    && git clone -b master https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/OFBTriviaFront.git \
    && cd OFBTriviaFront \
    && git checkout -b tempbranch tags/$BRANCH \
    && cp /root/frontend/env.js src \
    && cp /root/docker/frontend/Dockerfile . \
    && cp /root/docker/frontend/default.conf . \
    && docker build -t ofb-trivia-frontend .

else
    if [[ -z "BRANCH" ]]; then
     BRANCH="master"
    fi

    rm -rf OFBTriviaFront \
    && git clone -b $BRANCH https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/OFBTriviaFront.git \
    && cd OFBTriviaFront \
    && cp /root/frontend/env.js src \
    && cp /root/docker/frontend/Dockerfile . \
    && cp /root/docker/frontend/default.conf . \
    && docker build -t ofb-trivia-frontend .

fi