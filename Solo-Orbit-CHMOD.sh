!/bin/bash

# Script to stop and remove the solo-orbit Docker container
# Logs all output to shutdown_and_remove.log

echo "----------------------------------------"
echo "$(date): Starting script to make Run Solo Orbit executable..."
# Step 1: Execute Script
echo "converting run_solo_orbit.sh to executable command"
chmod +x run_solo_orbit.sh
echo "$(date): Script execution completed."
echo "----------------------------------------"

