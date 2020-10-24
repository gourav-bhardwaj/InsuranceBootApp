FROM openjdk:8-jdk-alpine

RUN mkdir /app

ARG JAR_FILE=/target/insurance-boot-app.jar

COPY ${JAR_FILE}  /app/insurance-boot-app.jar

EXPOSE 8998

ENTRYPOINT ["java","-jar","/app/insurance-boot-app.jar"]

