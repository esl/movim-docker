#!/bin/bash
IMAGE=movim/base
echo "removing image"
docker rmi -f $IMAGE
echo

echo "building new image"
docker build -t $IMAGE .

