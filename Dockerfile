FROM alpine:latest AS build
RUN apk update && \
    apk add --no-cache openjdk17 && \
    apk add --no-cache curl
WORKDIR /app
COPY . .
RUN ls -la && \
    chmod +x ./gradlew && \
    ./gradlew bootJar --no-daemon

FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /app/build/libs/API-REST-con-Gradle-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]