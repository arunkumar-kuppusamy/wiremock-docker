FROM openjdk:8u121-jre
MAINTAINER Thomas Heslin

RUN mkdir wiremock
WORKDIR /wiremock

RUN wget http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.5.1/wiremock-standalone-2.5.1.jar
COPY __files /wiremock/__files
COPY mappings /wiremock/mappings

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "wiremock-standalone-2.5.1.jar"]
