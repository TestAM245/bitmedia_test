#!/bin/bash

# Variables
IMAGE_NAME="test-nginx"
CONTAINER_NAME="test-nginx-container"

# Build Docker image
echo "Building the Docker image..."
docker build -t $IMAGE_NAME .

# Run Docker container
echo "Running the Docker container..."
docker run -d --name $CONTAINER_NAME -p 8080:80 $IMAGE_NAME
