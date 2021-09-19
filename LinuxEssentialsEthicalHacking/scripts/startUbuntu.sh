#!/bin/sh
CONTAINER_NAME=ubuntu-instance
docker run -td --name CONTAINER_NAME ubuntu &&
docker exec -it CONTAINER_NAME bash