# Use the official nginx image as base
FROM nginx:alpine

# Copy the custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the application files to nginx's default serving directory
COPY index.html /usr/share/nginx/html/
COPY styles/ /usr/share/nginx/html/styles/
COPY images/ /usr/share/nginx/html/images/
COPY sounds/ /usr/share/nginx/html/sounds/
COPY sitemap.xml /usr/share/nginx/html/
COPY robots.txt /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 