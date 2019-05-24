FROM openjdk:13-alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/configserver-0.0.1-SNAPSHOT.jar /app/
RUN mkdir /config-repo
ENV PROGRAM_OPTS=
CMD java ${PROGRAM_OPTS} -jar /app/configserver-0.0.1-SNAPSHOT.jar -Dspring.cloud.config.server.gt.uri=/config-repo

VOLUME /config-repo