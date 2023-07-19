FROM openjdk:17

WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar /app/docker-demo.jar

# Expose the port your application listens on (if applicable)
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "docker-demo.jar"]
