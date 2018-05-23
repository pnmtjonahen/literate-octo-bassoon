FROM java:alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/configserver-0.0.1-SNAPSHOT.jar /app/
RUN mkdir /config-repo

ENV PORT 8888

CMD java -jar /app/configserver-0.0.1-SNAPSHOT.jar -Dspring.cloud.config.server.gt.uri=/config-repo

VOLUME /config-repo
EXPOSE 8888