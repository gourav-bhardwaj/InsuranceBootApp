FROM openjdk:8-jdk-alpine

RUN apk update && apk upgrade

RUN apk add git
WORKDIR /home
RUN git clone https://gourav-bhardwaj:766gobca977@github.com/gourav-bhardwaj/InsuranceBootApp.git

WORKDIR /home/InsuranceBootApp

RUN apk add maven
RUN mvn clean package -Dmaven.test.skip=true

WORKDIR /home/InsuranceBootApp/target

ADD insurance-boot-app.jar .

ENTRYPOINT ["java", "-jar", "insurance-boot-app.jar"]
