#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=iyusuf40/machine-learning-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project --image="$dockerpath"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/project \
    --address 0.0.0.0 8000:80

