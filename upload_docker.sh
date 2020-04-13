#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=devops/DevOps_Microservices

# Step 2:  
# Authenticate and tag
echo "Docker ID and Image: $dockerpath"
docker login 
docker tag devopslocal $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath