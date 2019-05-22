FROM openjdk:8-jre-alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/zipkinserver-0.0.1-SNAPSHOT.jar /app/

CMD java -jar /app/zipkinserver-0.0.1-SNAPSHOT.jar

EXPOSE 9411