#!/bin/bash

# Simple script that will update all packages and remove unnecessary packages and clean up.

# Ensure root privilege

if [[ $UID -ne 0 ]]; then
    echo "This script requires root privileges."
    exit 1
fi

# Update package list and upgrade all packages
echo "Updating package list and upgrading all packages..."
if apt-get update && apt-get upgrade -y; then
    echo "Update and upgrade completed successfully."
else
    echo "Update and upgrade failed." >&2
fi

# Remove unnecessary packages and clean up
echo "Removing unnecessary packages and cleaning up..."
if apt-get autoremove -y && apt-get autoclean; then
    echo "Auto-remove and autoclean completed successfully."
else
    echo "Auto-remove and autoclean failed." >&2
fi

echo "System maintenance completed."

exit 0
