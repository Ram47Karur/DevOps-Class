# Use Ubuntu as the base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the HTML file from the host into the container
COPY index.html .

# Update package information and install a basic web server (NGINX in this case)
RUN apt-get update && apt-get install -y nginx

# Remove the default NGINX configuration
RUN rm /etc/nginx/sites-enabled/default

# Copy a custom NGINX configuration to serve our HTML page
COPY nginx.conf /etc/nginx/sites-enabled/

# Expose port 80 for web traffic
EXPOSE 80

# Start the NGINX server when the container runs
CMD ["nginx", "-g", "daemon off;"]
