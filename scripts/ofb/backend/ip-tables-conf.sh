#!/usr/bin/env bash

ANCHOR_IP=$(curl -s http://169.254.169.254/metadata/v1/interfaces/public/0/anchor_ipv4/address)
echo $ANCHOR_IP
iptables -t nat -A POSTROUTING -p tcp  -o eth0 -j SNAT --to-source $ANCHOR_IP
