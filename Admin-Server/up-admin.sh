#!/bin/sh
docker run -p 7983:8080 -p 9091:9090  --network=local-sb-network -e "eureka.client.serviceUrl.defaultZone=http://eurekaserver/eureka/" -e "PROGRAM_OPTS=-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9090 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.local.only=false" tjonahen/adminserver
