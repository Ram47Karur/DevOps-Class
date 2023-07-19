# Use the base Java Docker image
FROM openjdk:17


# Set the working directory inside the container
# RUN mkdir /javadocker

# Copy the entire contents of the current directory into the container at /app
COPY target/docker-demo-0.0.1-SNAPSHOT.jar /docker-demo-0.0.1-SNAPSHOT.jar

# The application's entrypoint command when the container starts
ENTRYPOINT ["java", "-jar", "docker-demo-0.0.1-SNAPSHOT.jar"]