#!/bin/bash

# Script to build, stop, remove, and run the solo-orbit Docker container
# Logs all output to run_solo_orbit.log

LOG_FILE="run_solo_orbit.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "----------------------------------------"
echo "$(date): Starting script execution..."
echo "Logging to $LOG_FILE"

# Step 1: Build the Docker image
echo "Building the Docker image..."
docker build -t solo-orbit-img:latest .
if [ $? -ne 0 ]; then
    echo "Error: Failed to build the Docker image."
    exit 1
fi

# Step 2: Stop the existing container if it exists
echo "Stopping the existing container (if running)..."
docker stop solo-orbit-container 2>/dev/null || echo "No running container to stop."

# Step 3: Remove the existing container if it exists
echo "Removing the existing container (if exists)..."
docker rm solo-orbit-container 2>/dev/null || echo "No container to remove."

# Step 4: Run the new container
echo "Starting a new container..."
docker run -d --name solo-orbit-container -p 8080:80 solo-orbit-img:latest
if [ $? -eq 0 ]; then
    echo "Container started successfully! Access it at http://localhost:8080"
else
    echo "Error: Failed to start the container."
    exit 1
fi

echo "$(date): Script execution completed."
echo "----------------------------------------"

