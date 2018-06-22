FROM java:alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/adminserver-0.0.1-SNAPSHOT.jar /app/

ENV PORT 8080

CMD java -jar /app/adminserver-0.0.1-SNAPSHOT.jar

EXPOSE 8080