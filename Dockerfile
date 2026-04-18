FROM eclipse-temurin:21-jdk

WORKDIR /usr/app

# Copy the built JAR (wildcard ensures it works regardless of version)
COPY ./target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
