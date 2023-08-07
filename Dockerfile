# Use the Nginx base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy web pages to the Nginx default web root directory
COPY page1.html /usr/share/nginx/html/
COPY page2.html /usr/share/nginx/html/
COPY page3.html /usr/share/nginx/html/

# Expose port 80 for HTTP
EXPOSE 80

# Start Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]