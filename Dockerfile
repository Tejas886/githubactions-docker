FROM eclipse-temurin:17-jdk 
WORKDIR /app 
COPY /target/java-docker-app-1.0.0.jar app1.jar
EXPOSE 8080
ENTRYPOINT ["java" , "-jar" , "app1.jar"]

