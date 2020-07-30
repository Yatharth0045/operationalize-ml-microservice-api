#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
TAG="ml-app:1.0.0"
# Step 1:
# Build image and add a descriptive tag
docker build -t ${TAG} .

# Step 2: 
# List docker images
docker images | grep ${TAG}

# Step 3: 
# Run flask app
docker run -p 8000:80 ${TAG}
