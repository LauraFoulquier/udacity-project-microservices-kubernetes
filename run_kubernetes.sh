#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=laurafoulquiershell/lfmicroservices:1.0

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run predictions --image=$dockerpath --port 80
kubectl run --generator=run-pod/v1 --image=$dockerpath predictions


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward predictions-695dfdb6fc-mh5tw 8000:80

