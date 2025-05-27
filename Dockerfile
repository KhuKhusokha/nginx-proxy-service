# Use an official Nginx base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file into the container
# Make sure nginx.conf is in the same directory as this Dockerfile
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 (Render will handle mapping this to its public port)
EXPOSE 80

# Command to start Nginx (this is the default for Nginx images)
CMD ["nginx", "-g", "daemon off;"]
