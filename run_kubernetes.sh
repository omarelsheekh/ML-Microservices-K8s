#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=omarelsheekh/mldevops

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run model --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl expose pod model --port=80 --target-port=80