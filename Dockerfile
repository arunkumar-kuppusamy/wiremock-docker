FROM openjdk:8u121-jre
MAINTAINER Thomas Heslin

RUN mkdir wiremock
WORKDIR /wiremock

COPY wiremock-1.57-standalone.jar /wiremock
COPY __files /wiremock/__files
COPY mappings /wiremock/mappings

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "wiremock-1.57-standalone.jar"]