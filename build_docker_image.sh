#!/bin/bash

# Default values
BASE_IMAGE_NAME="maryamdrv/base-image"
BASE_IMAGE_TAG="1.5"

SERVICE_IMAGE_NAME="maryamdrv/my-simple-image"
SERVICE_IMAGE_TAG="1.19"

DOCKERFILE="Dockerfile"

# Check the argument and set Dockerfile and image details accordingly
if [ "$1" == "build_base_image" ]; then
  IMAGE_NAME="$BASE_IMAGE_NAME"
  IMAGE_TAG="$BASE_IMAGE_TAG"
  DOCKERFILE="base_image/Dockerfile"
elif [ "$1" == "build_service_image" ]; then
  IMAGE_NAME="$SERVICE_IMAGE_NAME"
  IMAGE_TAG="$SERVICE_IMAGE_TAG"
  DOCKERFILE="Dockerfile"
else
  echo "Invalid argument. Use 'build_base_image' or 'build_service_image'."
  exit 1
fi

# Build the Docker image
echo "Building Docker image: $IMAGE_NAME:$IMAGE_TAG with Dockerfile: $DOCKERFILE"
docker build -t "$IMAGE_NAME:$IMAGE_TAG" -f "$DOCKERFILE" .

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "Docker image $IMAGE_NAME:$IMAGE_TAG built successfully!"
else
  echo "Failed to build Docker image."
  exit 1
fi
