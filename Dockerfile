FROM eclipse-temurin
VOLUME /tmp
ADD target/docker-demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java","-jar","/app.jar"]
