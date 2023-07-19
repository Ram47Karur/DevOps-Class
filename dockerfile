FROM openjdk:17
WORKDIR /app

COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar /app/docker-demo.jar

EXPOSE 8080

CMD ["java", "-jar", "docker-demo.jar"]