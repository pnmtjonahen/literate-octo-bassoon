#!/bin/sh
docker run -p 9411:9411 -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro --network=local-sb-network -e "eureka.client.serviceUrl.defaultZone=http://eurekaserver/eureka/" tjonahen/zipkinserver
