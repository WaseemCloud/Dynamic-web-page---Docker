# Here we are using an official nginx base image
FROM nginx:alpine

# Copying the contents of the local directory to the container at /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Exposing port 80 to the outside world
EXPOSE 80

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
