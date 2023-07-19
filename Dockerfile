FROM eclipse-temurin:17

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory into the container
COPY target/docker-demo-0.0.1-SNAPSHOT.jar /app/docker-demo.jar

# Expose the port on which your Java application runs (if required)
EXPOSE 8080

# Command to run the Java application
CMD ["java", "-jar", "docker-demo.jar"]