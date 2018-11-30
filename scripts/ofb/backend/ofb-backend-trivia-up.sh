#!/usr/bin/env bash

DEPLOYMENT_TYPE=$1
BRANCH=$2

cd /root/backend

if [[ $DEPLOYMENT_TYPE == "tag" ]]; then
    rm -rf OFBTriviaBackend \
    && git clone -b development https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/OFBTriviaBackend.git \
    && cd OFBTriviaBackend \
    && git checkout -b tempbranch tags/$BRANCH \
    && cp /root/backend/triviaDBConnection.js config \
    && cp /root/backend/triviaDBParameters.js config \
    && cp /root/docker/backend/Dockerfile . \
    && docker build -t ofb-backend-trivia .
else
    if [[ -z "BRANCH" ]]; then
     BRANCH="development"
    fi

    rm -rf OFBTriviaBackend \
    && git clone -b $BRANCH https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/OFBTriviaBackend.git \
    && cd OFBTriviaBackend \
    && cp /root/backend/triviaDBConnection.js config \
    && cp /root/backend/triviaDBParameters.js config \
    && cp /root/docker/backend/Dockerfile . \
    && docker build -t ofb-backend-trivia .
fi
