#!/bin/sh
docker run -p 9411:9411 --network=local-sb-network -e "eureka.client.serviceUrl.defaultZone=http://eurekaserver:8761/eureka/" tjonahen/zipkinserver
