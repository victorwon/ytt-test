# Use the Nginx image as the base image
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

# Copy the Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the web content to the container
COPY html /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Set the default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
