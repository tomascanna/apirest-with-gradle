FROM alpine:latest AS build
RUN apk update
# RUN apk add install openjdk-17-jdk
RUN apk add --no-cache openjdk17
COPY . .
# RUN chmod +x ./gradlew bootJar --no-daemon
RUN ./gradlew bootJar --no-daemon

FROM openjdk:17-alpine
EXPOSE 8080
#COPY ./build/libs/API-REST-con-Gradle-0.0.1-SNAPSHOT.jar ./app.jar
COPY --from=build ./build/libs/API-REST-con-Gradle-0.0.1-SNAPSHOT.jar ./app.jar
ENTRYPOINT ["java", "-jar" , "app.jar"]