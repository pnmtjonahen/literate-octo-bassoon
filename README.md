# Spring Boot Cloud application services

- Build the Config, Eureka, Admin and Turbine servers

```
mvn clean install -P docker
```

- Run docker-compose to start the services

First get the local host IPadress, this is added as extra_hosts to the docker images that need a eureka-server host name. This allows for client discovery outside the docker network.

```
HOST_IP=`ip -4 addr show scope global dev wlp2s0 | grep inet | awk '{print \$2}' | cut -d / -f 1`
export HOST_IP=$HOST_IP && docker-compose up
```

Replace 'wlp2s0' with your network device to get your current IPadress
 
## HystrixDashboard
Enter the following eureka server adress:
- http://eureka-server:8761/eureka/apps

This will get the configured hystrix streams from eureka. Select the turbine streams as these will combine all hystrix streams from the different instances of the same service. Change te clustername from default into the correct clustername.

|name|cluster name|
|----|------------|
|diner|DINER|
|bartender|BARTENDER|

Note: The kitchen or chef service is not hystrix enabled.


## Ports
Note: you need to openup your firewall to allow connections from within a docker container to you local host. Else springboot admin will not be able to connect to the different spring boot applications.

|name|port|url|
|----|----|---|
|Config|8888|
|Eureka|8761|http://localhost:8761/|
|Zipkin|9411|http://localhost:9411/zipkin/|
|Admin|7983|http://localhost:7983/#/applications|
|RabbitMQ|5672, 15672|http://localhost:15672/ guest/guest|
|HystrixDashboard/Turbine diner|7980|http://host-server:7980/turbine.stream?cluster=DINER|
|HystrixDashboard/Turbine bar|7981|http://host-server:7981/turbine.stream?cluster=BARTENDER|
|HystrixDashboard/Turbine kitchen|7982|http://host-server:7982/turbine.stream?cluster=CHEF|
|HystrixDashboard combined|7979|http://localhost:7979/hystrix-dashboard/|
