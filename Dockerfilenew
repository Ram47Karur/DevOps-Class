# Use a base image with Java installed
FROM eclipse-temurin:17
EXPOSE 8080
# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine to the container's working directory
COPY target/docker-demo-0.0.1-SNAPSHOT.jar /app/docker-demo.jar

# Command to run your Java application
CMD ["java", "-jar", "docker-demo.jar"]


