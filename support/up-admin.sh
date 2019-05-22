#!/bin/sh
HOST_IP=`ip -4 addr show scope global dev wlp59s0 | grep inet | awk '{print \$2}' | cut -d / -f 1`
export HOST_IP=$HOST_IP && docker run -p 7983:7983 --add-host="eureka-server:${HOST_IP}" --network=local-sb-network tjonahen/adminserver
