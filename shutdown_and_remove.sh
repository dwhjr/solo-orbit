#!/bin/bash

# Script to stop and remove the solo-orbit Docker container
# Logs all output to shutdown_and_remove.log

LOG_FILE="shutdown_and_remove.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "----------------------------------------"
echo "$(date): Starting shutdown and remove script..."
echo "Logging to $LOG_FILE"

# Step 1: Stop the existing container
echo "Stopping the container (if running)..."
docker stop solo-orbit-container 2>/dev/null
if [ $? -eq 0 ]; then
    echo "Container stopped successfully."
else
    echo "No running container to stop."
fi

# Step 2: Remove the container
echo "Removing the container (if exists)..."
docker rm solo-orbit-container 2>/dev/null
if [ $? -eq 0 ]; then
    echo "Container removed successfully."
else
    echo "No container to remove."
fi

echo "$(date): Script execution completed."
echo "----------------------------------------"

