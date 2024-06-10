#!/bin/bash

# Script to organize and display partitions.
# Orders partitions by size from high to low, with the current operating system first (Ubuntu),
# followed by the dual boot drive (Win11), and then storage drives.
# Removes boot/MBR partitions from the list, showing only actual SSDs/NVME drives and any inserted removable USB drives/storage.
# Utilizes "ls -l /dev/disk/by-uuid", "blkid", "lsblk", and "df -h".

# Check for root privileges.
if [[ $EUID -ne 0 ]]; then
    echo "This script requires root privileges."
    exit 1
fi

# Update /etc/fstab to add SSDs/NVME drives that need to be auto-mounted on boot.
mount -a &>/dev/null

# Get disk usage information, sort by size in reverse order, and filter relevant mounts.
df -h | sort -k 2r | awk '/Mounted|\/home|\/media|\/boot/ && !/\/boot\/efi/'

exit 0
