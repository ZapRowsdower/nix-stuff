#!/bin/sh
# Get the IDs of all containers and then remove them
docker rm $(docker ps -aq)