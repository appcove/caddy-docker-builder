#!/bin/bash

# Define variables
IMAGE_NAME="yourusername/python-app"
TAG="latest"

# Build the Docker image
docker build -t "$IMAGE_NAME:$TAG" .

# Tag the image with a version/tag
docker tag "$IMAGE_NAME:$TAG" "$IMAGE_NAME:$TAG"

# Log in to Docker Hub (optional if you're using credentials from `pass`)
docker login

# Push the image to Docker Hub
docker push "$IMAGE_NAME:$TAG"

