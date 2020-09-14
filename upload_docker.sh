#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=laurafoulquiershell/lfmicroservices:1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/docker_password.txt | docker login --username laurafoulquiershell --password-stdin 

# Step 3:
# Push image to a docker repository
docker tag 39348b15d23c $dockerpath
docker push $dockerpath
