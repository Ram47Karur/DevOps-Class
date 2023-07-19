FROM nginx
# VOLUME 
# ARG JAVA_OPTS
EXPOSE 80
COPY index.html /usr/share/nginx/html/
# ENV JAVA_OPTS=$JAVA_OPTS
# ENTRYPOINT exec java $JAVA_OPTS -jar dockerdemo.jar
RUN mkdir /my_directory
ENV MY_VARIABLE=my_value
RUN apt-get update && apt-get install -y nano
ENTRYPOINT ["nginx", "-g", "daemon off;"]
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar dockerdemo.jar
