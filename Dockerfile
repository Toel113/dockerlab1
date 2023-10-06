# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your HTML files into the Nginx default web server directory
COPY ./index.html /usr/share/nginx/html

# Expose port 80 (the default Nginx port)
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]