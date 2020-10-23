FROM openjdk:8-jdk-alpine

ADD ./target/insurance-boot-app.jar /var/lib/docker/tmp/insurance-boot-app.jar

EXPOSE 8899

ENTRYPOINT ["java","-jar","insurance-boot-app.jar"]

