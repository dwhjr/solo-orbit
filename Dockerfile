# Use the official Nginx image
FROM nginx:latest

# Copy the static HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

