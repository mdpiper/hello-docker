# docker-example

A simple example of setting up, building, and running a Docker image.

The Dockerfile contains instructions for 
configuring a web server in Python
to display a web page.

Build the image from the Dockerfile with:
```
docker build --tag hello-docker .
```

Launch a container from the image with:
```
docker run --publish 8080:80 --detach --name hiya hello-docker
```
Because `--detach` is set, the container runs in the background.
The container is named "hiya".
Port 8080 on the local machine is mapped to port 80 in the container.

To view the exciting result of running this container, open 
http://[::]:8080/ (or http://localhost:8080)
in a web browser on your local machine.

Stop the container and remove it with:
```
docker stop hiya
docker rm hiya
```
