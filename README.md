# Spring Boot Cloud application service

- Build the Config server

`
mvn clean install -P docker
`

- Build the Eureka server

`
mvn clean install -P docker
`

Run docker-compose to start the services
` 
docker-compose up

#HystrixDashboard

As the dashboards needs to be able to load from a hystrix stream, and the application runs on localhost, Start the HystrixDashboard as a java application

mvn spring-boot:run -Dserver.port=7979
`
