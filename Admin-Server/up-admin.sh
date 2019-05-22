#!/bin/sh
docker run -p 7983:7983 -p 9091:9090  --network=local-sb-network -e "eureka.client.serviceUrl.defaultZone=http://eurekaserver:8761/eureka/" tjonahen/adminserver
