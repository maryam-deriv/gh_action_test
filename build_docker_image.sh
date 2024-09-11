#!/bin/bash

# Variables
IMAGE_NAME="maryamdrv/my-simple-image"
IMAGE_TAG="1.3"

# Build the Docker image
echo "Building Docker image: $IMAGE_NAME:$IMAGE_TAG"
docker build -t "$IMAGE_NAME:$IMAGE_TAG" .

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "Docker image $IMAGE_NAME:$IMAGE_TAG built successfully!"
else
  echo "Failed to build Docker image."
  exit 1
fi
