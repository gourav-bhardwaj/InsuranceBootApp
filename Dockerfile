FROM openjdk:8-jdk-alpine

WORKDIR /

ARG JAR_FILE=/target/insurance-boot-app.jar

ADD ${JAR_FILE}  insurance-boot-app.jar

RUN sh -c 'touch ./insurance-boot-app.jar'

EXPOSE 8998

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/insurance-boot-app.jar"]

