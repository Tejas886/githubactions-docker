# Stage 1: Build inside the container
FROM maven:3.8-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the app
FROM eclipse-temurin:17-jdk
WORKDIR /app
# This takes the file from the 'build' stage above
COPY --from=build target/java-docker-app-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
