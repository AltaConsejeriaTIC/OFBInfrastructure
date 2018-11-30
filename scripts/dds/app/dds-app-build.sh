#!/usr/bin/env bash

DEPLOYMENT_TYPE=$1
BRANCH=$2

DATE=$(date +%Y%m%d_%H%M%S)
cd /root/app

if [[ $DEPLOYMENT_TYPE == "tag" ]]; then
    rm -rf LGBTQApp \
    && git clone -b development https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/LGBTQApp.git \
    && cd LGBTQApp \
    && git checkout -b tempbranch tags/$BRANCH \
    && cp /root/app/env.ts src \
    && docker run --rm -v $(pwd):/ionicapp kusumoto/docker-ionic-android-sdk ionic cordova build android \
    && docker exec dds-admin mkdir -p /usr/share/nginx/html/app/$DATE \
    && docker cp platforms/android/app/build/outputs/apk/debug/app-debug.apk dds-admin:/usr/share/nginx/html/app/$DATE

else
    if [[ -z "BRANCH" ]]; then
     BRANCH="development"
    fi

    rm -rf LGBTQApp \
    && git clone -b $BRANCH https://x-oauth-basic:96c13eb209f235fdf30b1fcb0dd887d68a526191@github.com/alvarotrianas/LGBTQApp.git \
    && cd LGBTQApp \
    && cp /root/app/env.ts src \
    && docker run --rm -v $(pwd):/ionicapp kusumoto/docker-ionic-android-sdk ionic cordova build android \
    && docker exec dds-admin mkdir -p /usr/share/nginx/html/app/$DATE \
    && docker cp platforms/android/app/build/outputs/apk/debug/app-debug.apk dds-admin:/usr/share/nginx/html/app/$DATE
fi
