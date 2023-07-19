# setting the baseImage
FROM eclipse-temurin

#selecting work directory
WORKDIR /usr/src/myapp

#copying the jar file to the working directory
COPY ./target/docker-demo.jar /usr/src/myapp

#exposing the 8080 port so that host can interact with container
EXPOSE 8080

#specifying the command along with parameters to run once the container is started running
CMD [ "java","-jar","docker-demo.jar" ]