#!/bin/sh

docker-compose logs --follow --no-color rabbitmq | cut -c 19- > /home/ordina/log/rabbitmq.log&
docker-compose logs --follow --no-color configserver | cut -c 19- > /home/ordina/log/configserver.log&
docker-compose logs --follow --no-color eurekaserver | cut -c 19- > /home/ordina/log/eurekaserver.log&
