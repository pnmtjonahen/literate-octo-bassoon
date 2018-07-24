# Spring Boot Cloud application services

- Build the Config server

```
mvn clean install -P docker
```

- Build the Eureka server

```
mvn clean install -P docker
```

Run docker-compose to start the services

```
docker-compose up
```

## Spring Boot Admin
- Build and run the spring boot admin
```
mvn clean install
mvn spring-boot:run
```

## HystrixDashboard

As the dashboards needs to be able to load from a hystrix stream, and the application runs on localhost, Start the HystrixDashboard as a java application

```
mvn spring-boot:run -Dserver.port=7980 -Dspring.profiles.active=diner

mvn spring-boot:run -Dserver.port=7981 -Dspring.profiles.active=bar

mvn spring-boot:run -Dserver.port=7982 -Dspring.profiles.active=kitchen
```

profile can be either bar,kitchen or diner. The histryx dashboard wil start a turbine server to aggregate different hystrix stream from the same application.

next download histrix single jar https://github.com/kennedyoliveira/standalone-hystrix-dashboard and start it

```
java -jar standalone-hystrix-dashboard-{version-downloaded}-all.jar
```
## Ports
|name|port|url|
|----|----|---|
|Config|8888|
|Eureka|8761|http://localhost:8761/|
|Zipkin|9411|http://localhost:9411/zipkin/|
|Admin|7983|http://localhost:7983/#/applications|
|RabbitMQ|5672, 15672|http://localhost:15672/ guest/guest|
|HistryxDashboard/Turbine diner|7980|
|HistryxDashboard/Turbine bar|7981|
|HistryxDashboard/Turbine kitchen|7982|
|HistryxDashboard combined|7979|http://localhost:7979/hystrix-dashboard/|
