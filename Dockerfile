FROM openjdk:8-jdk-alpine

ADD ./target/insurance-boot-app.jar /app/

EXPOSE 8899

ENTRYPOINT ["java","-jar","insurance-boot-app.jar"]

