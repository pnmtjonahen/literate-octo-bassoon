FROM java:alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/eurekaserver-0.0.1-SNAPSHOT.jar /app/

ENV PORT 8761

CMD java -jar /app/eurekaserver-0.0.1-SNAPSHOT.jar

EXPOSE 8761