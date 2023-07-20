# Pre-requisites

1. JDK 17
2. IntelliJ / Eclipse (recent versions; no specific version requirement)

# Setup

1. This is a maven project which will be auto-detected by Eclipse / IntelliJ.
2. You should be able to build this application in either of these IDEs as long as you have JDK 17 in your local.
3. Ensure the IDE knows JDK path; again IDE should auto-detect this in most cases.
4. This application can be run as "Java Application" from both the IDEs.
5. Once it successfully starts, you should see console logs ending with "Started DockerDemoApplication....".
6. Hit below API from Postman client or CURL command-line tool or browser. You should see given message.

```shell
GET http://localhost:8080/hello

{
    "status": "running",
    "message": "hello, stranger!"
}
```

# Application Specific Pointers - How to Dockerize

1. Start with a java based docker image e.g., eclipse-temurin:17
2. Use this maven command to build & package the code into a JAR file: `./mvnw package`
3. This command will create JAR file under target/docker-demo-0.0.1-SNAPSHOT.jar
4. Application should be started with the command: `java -jar <path to above JAR file>`.
