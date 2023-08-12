#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="trunglam12/udacitylab2"

# Step 2
# Run the Docker Hub container with Kubernetes
kubectl run udacitylab21 --image=$dockerpath:v1

# Step 3:
# List Kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitylab21 8000:80
