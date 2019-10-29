FROM openjdk:8-jdk-alpine
MAINTAINER Atos
VOLUME /tmp
ADD ./target/gs-rest-service-0.1.0.jar seal-test.jar
RUN sh -c 'touch /seal-test.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /seal-test.jar" ]
EXPOSE 8080
