FROM openjdk:13-alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/eurekaserver-0.0.1-SNAPSHOT.jar /app/
ENV PROGRAM_OPTS=
CMD java ${PROGRAM_OPTS} -jar /app/eurekaserver-0.0.1-SNAPSHOT.jar
