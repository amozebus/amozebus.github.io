
# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the directory for static files
WORKDIR /usr/share/nginx/html

# Copy all static files from the current directory to the container
COPY . .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
