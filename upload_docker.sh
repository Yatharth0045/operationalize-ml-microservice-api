#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=yatharth0045/ml-app:1.0.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ml-app:1.0.0 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
