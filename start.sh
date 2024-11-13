#!/bin/bash

# Define container and image names
IMAGE_NAME="ra2"
CONTAINER_NAME="ra2"

# Step 1: Build the Docker image
echo "Building the Docker image..."
docker build -t $IMAGE_NAME .

# Step 2: Stop and remove any existing container with the same name
echo "Stopping any existing container..."
docker stop $CONTAINER_NAME 2>/dev/null || true
echo "Removing any existing container..."
docker rm $CONTAINER_NAME 2>/dev/null || true

# Step 3: Run the Docker container
echo "Running the Docker container..."
docker run -d --name $CONTAINER_NAME -p 8081:8081 --restart always $IMAGE_NAME

# Step 4: Print container logs
echo "Printing Docker container logs..."
docker logs -f $CONTAINER_NAME

