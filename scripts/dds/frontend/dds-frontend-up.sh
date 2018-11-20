#!/usr/bin/env bash

DEPLOYMENT_TYPE=$1
BRANCH=$2

cd /root/frontend

if [[ $DEPLOYMENT_TYPE == "tag" ]]; then
    rm -rf LGBTQAdmin \
    && git clone -b development https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/LGBTQAdmin.git \
    && cd LGBTQAdmin \
    && git checkout -b tempbranch tags/$BRANCH \
    && cp /root/frontend/configuration.js src/utils \
    && cp /root/frontend/main.js src \
    && cp /root/docker/frontend/Dockerfile . \
    && docker build -t dds-frontend .

else
    if [[ -z "BRANCH" ]]; then
     BRANCH="development"
    fi

    rm -rf LGBTQAdmin \
    && git clone -b $BRANCH https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/LGBTQAdmin.git \
    && cd LGBTQAdmin \
    && cp /root/frontend/configuration.js src/utils \
    && cp /root/frontend/main.js src \
    && cp /root/docker/frontend/Dockerfile . \
    && docker build -t dds-frontend .

fi