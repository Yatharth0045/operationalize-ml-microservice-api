#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=yatharth0045/ml-app:1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-microservice \
	--generator=run-pod/v1 \
	--image=$dockerpath \
	--port=80

# Step 3 and Step 4
# List kubernetes pods and Forward the container port to a host
while true; do
	if [ $(kubectl get pods | grep ml-microservice | awk '{ print $3 }') = 'Running' ]; then
		kubectl port-forward ml-microservice 8000:80;
		break;
	fi
done

