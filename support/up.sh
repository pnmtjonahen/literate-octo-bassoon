#!/bin/sh
HOST_IP=`ip -4 addr show scope global dev wlp59s0 | grep inet | awk '{print \$2}' | cut -d / -f 1`
export HOST_IP=$HOST_IP && docker-compose up
