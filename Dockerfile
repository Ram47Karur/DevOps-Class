# FROM eclipse-temurin
# ADD target/docker-demo-0.0.1-SNAPSHOT.jar app.jar
# ENTRYPOINT [ "java", "-jar","/app.jar" ]
FROM eclipse-temurin
WORKDIR /app
COPY target/docker-demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar", "--server.port=8080"]