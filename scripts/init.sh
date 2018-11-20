#!/usr/bin/env bash

apt-get update  \
&& apt update \
&& apt-get install git -y \
&& apt install apt-transport-https ca-certificates curl software-properties-common -y \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - \
&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
&& apt update \
&& apt install docker-ce -y \
&& curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
&& chmod +x /usr/local/bin/docker-compose


#&& iptables -t nat -A POSTROUTING -p tcp  -o eth0 -j SNAT --to-source 10.10.0.5 \