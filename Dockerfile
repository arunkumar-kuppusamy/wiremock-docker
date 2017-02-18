FROM openjdk:8u121-jre
MAINTAINER Thomas Heslin

RUN mkdir wiremock
WORKDIR /wiremock

COPY wiremock-standalone-2.5.1.jar /wiremock
COPY __files /wiremock/__files
COPY mappings /wiremock/mappings

EXPOSE 8080

ENTRYPOINT ["java", "-jar"]
CMD ["wiremock-standalone-2.5.1.jar"]
