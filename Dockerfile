FROM eclipse-temurin:17

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven wrapper files to the container
COPY .mvn .mvn

# Copy the pom.xml file to the container
COPY pom.xml .

# Download the project dependencies
RUN ./mvnw dependency:go-offline

# Copy the application source code to the container
COPY src src

# Build and package the code into a JAR file
RUN ./mvnw package

# Set the command to run the application
CMD ["java", "-jar", "target/docker-demo-0.0.1-SNAPSHOT.jar"]
