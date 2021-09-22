#!/bin/sh
export CONTAINER_NAME=ubuntu-instance
# Build image from docker file. Tag the image as 'my-ubuntu'
docker image build . -t my-ubuntu
# Run the built image, name it
docker run -td --name $CONTAINER_NAME my-ubuntu &&
# Shell into the running docker container
docker exec -it $CONTAINER_NAME bash