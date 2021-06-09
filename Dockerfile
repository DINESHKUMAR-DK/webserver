FROM nginx:latest
#FROM nginx:1.12-alpine

# Copy the tagged files from the build to the production environmnet of the nginx server
COPY ./index.html /usr/share/nginx/html

# Make port 80 available to the world outside the container
EXPOSE 80

# Run the nginx serverdocker 
CMD ["nginx", "-g", "daemon off;"]
