#!/usr/bin/env bash

DEPLOYMENT_TYPE=$1
BRANCH=$2

cd /root/backend

if [[ $DEPLOYMENT_TYPE == "tag" ]]; then
    rm -rf OFBBackend \
    && git clone -b develop https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/LGBTQBackend.git \
    && cd LGBTQBackend \
    && git checkout -b tempbranch tags/$BRANCH \
    && cp /root/backend/.env . \
    && cp /root/docker/backend/Dockerfile . \
    && docker build -t dds-backend .
else
    if [[ -z "BRANCH" ]]; then
     BRANCH="develop"
    fi

    rm -rf OFBBackend \
    && git clone -b $BRANCH https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/LGBTQBackend.git \
    && cd LGBTQBackend \
    && cp /root/backend/.env . \
    && cp /root/docker/backend/Dockerfile . \
    && docker build -t dds-backend .
fi
