FROM alpine:latest AS build

RUN apt-get update
RUN apt-get install openjdk-17-jdk
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM openjdk:17-alpine
EXPOSE 8080
COPY ./build/libs/API-REST-con-Gradle-0.0.1-SNAPSHOT.jar ./app.jar
ENTRYPOINT ["java", "-jar" , "app.jar"]