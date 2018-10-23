#!/usr/bin/env bash
rm -rf OFBBackend \
&& git clone -b development https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/OFBBackend.git \
&& cd OFBBackend \
&& cp /root/backend/wordpressDBConnection.js config \
&& cp /root/backend/wordpressDBParameters.js config \
&& cp /root/docker/backend/Dockerfile .
&& docker build -t ofb-backend .
