FROM openjdk:13-alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY maven/jar/adminserver-0.0.1-SNAPSHOT.jar /app/

ENV PORT 7983

CMD ["java", \
    "-Dcom.sun.management.jmxremote", \
    "-Dcom.sun.management.jmxremote.port=9090", \
    "-Dcom.sun.management.jmxremote.ssl=false", \
    "-Dcom.sun.management.jmxremote.authenticate=false", \
    "-Dcom.sun.management.jmxremote.local.only=false", \
    "-jar", \
    "/app/adminserver-0.0.1-SNAPSHOT.jar" ]

EXPOSE 9090
EXPOSE 7983