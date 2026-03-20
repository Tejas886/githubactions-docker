# Stage 2: Run the app
FROM eclipse-temurin:17-jdk
WORKDIR /app
# This takes the file from the 'build' stage above
COPY target/java-docker-app-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
