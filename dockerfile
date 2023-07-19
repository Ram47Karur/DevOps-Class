FROM openjdk:17
EXPOSE 8080

# Copy the JAR file from the target directory to the container
COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar /app/docker-demo.jar


# Define the command to run your application
CMD ["java", "-jar", "docker-demo.jar"]