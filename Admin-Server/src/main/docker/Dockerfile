FROM openjdk:13-alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/adminserver-0.0.1-SNAPSHOT.jar /app/

ENV PORT 7983

CMD java -jar /app/adminserver-0.0.1-SNAPSHOT.jar

EXPOSE 7983