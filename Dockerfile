# Use the official Nginx image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the static HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Copy solo-img.png to the same directory
COPY solo-img.png /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

