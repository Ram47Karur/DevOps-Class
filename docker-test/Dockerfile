FROM nginx
EXPOSE 80
COPY khushi.html /usr/share/nginx/html/

# Create a directory inside the container
RUN mkdir /my_directory

# Set an environmental variable
ENV MY_VARIABLE=my_value

# Install additional tool (nano)
RUN apt-get update && apt-get install -y nano

# Define the entry point command
ENTRYPOINT ["nginx", "-g", "daemon off;"]