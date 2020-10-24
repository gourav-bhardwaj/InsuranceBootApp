FROM openjdk:8-jdk-alpine

ARG JAR_FILE=/target/insurance-boot-app.jar

COPY ${JAR_FILE}  /var/lib/docker/tmp/insurance-boot-app.jar

EXPOSE 8899

ENTRYPOINT ["java","-jar","insurance-boot-app.jar"]

