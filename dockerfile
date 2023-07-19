
#installing eclipse-temurin:17 from the docker hub in the container 
FROM eclipse-temurin:17

#copying the local jar file which is present in the same directory as the docker file to the container where the 
#docker file is renamed as myapp.jar 

COPY docker-demo-0.0.1-SNAPSHOT.jar myapp.jar

#Running the jar file using the CMD command 
CMD ["java","-jar","myapp.jar"]

