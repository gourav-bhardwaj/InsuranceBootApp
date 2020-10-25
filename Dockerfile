FROM openjdk:8-jdk-alpine AS builder

RUN apk update && apk upgrade

#Maven
RUN apk add maven

#Git
RUN apk add git
RUN mkdir /InsuranceBootApp
RUN git clone https://github.com/gourav-bhardwaj/InsuranceBootApp.git /InsuranceBootApp

#Build
RUN mvn -f /InsuranceBootApp clean install

FROM openjdk:8-jdk-alpine

ARG JAR_FILE=/InsuranceBootApp/target/InsuranceBootApp-distributable

ADD --from=builder ${JAR_FILE} .

EXPOSE 8998

ENTRYPOINT ["java","-jar","insurance-boot-app.jar"]

