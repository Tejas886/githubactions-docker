FROM eclipse-temurin:17-jdk
WORKDIR /app
# This copies from the "build" stage above, not your computer
COPY . app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
