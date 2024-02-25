# Dynamic-web-page---Docker
The aim of this little tutorial is to demonstrate how to dockerize a simple webapp. Our app will be a simple dynamic web-page.
If you are using Windows, make sure to install Docker Desktop on our machine:

![image](https://github.com/WaseemCloud/Dynamic-web-page---Docker/assets/157589909/284c97b6-9777-47b8-9ef1-8ef1c00d20bf)

--------------------------------
# 1) Preparing Your Container Image:
--------------------------------
Open your Visual Studio and run the following command in the Terminal:

docker --version

As soon as we confirm that Docker is installed on your machine, we create a directory and make sure to include the following components in it:

a) Index.html

b) All the used images

c) Dockerfile

In your directory, you should be having something similar to this:

![image](https://github.com/WaseemCloud/Dynamic-web-page---Docker/assets/157589909/ae33018b-5512-4ba2-9be6-a85287503d8f)


Let's take a look at our Dockerfile, and explain each line in it:

# Here we are using an official nginx base image
FROM nginx:alpine

# Copying the contents of the local directory to the container at /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Exposing port 80 to the outside world
EXPOSE 80

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]

As we can see, we are using the official container base image “nginx” to create a web server. Then we copy our index.html and all the images used in this site to the directory “/usr/share/nginx/html” of the built container.

We will also need to expose port 80 to allow the access to this container through web browser. Finally, we start the Nginx web server.


--------------------------------
# 2) Building Your Container Image:
--------------------------------
Now, you should be ready to build our container image.

# Build Command: 
docker build -t mycontainer .


