FROM amazoncorretto:21-al2023-jdk as builder
WORKDIR /app
COPY target/*.jar /app/planner.jar

FROM amazoncorretto:21-al2023-jdk
WORKDIR /app
COPY --from=builder /app/planner.jar .
ENTRYPOINT ["java", "-jar", "planner.jar"]
EXPOSE 8080