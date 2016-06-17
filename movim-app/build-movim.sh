#!/bin/bash
clear
IMAGE=movim/app

echo "removing image"
docker rmi -f $IMAGE
echo

echo "building new image"
docker build -t $IMAGE .
