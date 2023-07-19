# Use a base image with IntelliJ IDEA Community Edition and OpenJDK (you may need to update the version)
FROM eclipse-temurin

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the Maven project's files to the container's working directory
# COPY pom.xml .
# COPY src ./src

# # Build the Java application using Maven
# RUN ./mvnw package

# The packaged JAR file should be available in the target/ directory after the build
# If your JAR file has a different name, modify the line below accordingly
# ARG JAR_FILE=docker-demo-0.0.1-SNAPSHOT.jar
ADD target/docker-demo-0.0.1-SNAPSHOT.jar app.jar
# # Copy the JAR file into the container's working directory
# COPY ${JAR_FILE} app.jar

# # Command to run the application when the container starts
# CMD ["java", "-jar", "app.jar"]
ENTRYPOINT [ "java","-jar","/app.jar" ]
