FROM openjdk:8-jdk-alpine

RUN pwd

WORKDIR /

ARG JAR_FILE=/target/insurance-boot-app.jar

ADD ${JAR_FILE}  insurance-boot-app.jar

EXPOSE 8998

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/insurance-boot-app.jar"]

