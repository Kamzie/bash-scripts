# Bash Scripting Learning Journey

Welcome to my bash scripting learning journey! In this repository, I'm documenting my progress and sharing the scripts I've developed while learning bash scripting. Below, you'll find a brief overview of each script I've created. Additionally, you may find links to README.md files for scripts that require more detailed information.

## Linux Administration Scripts

### 1. User Management Scripts

- **add-local-user-prompt.sh**: This script allows for the creation of new local user accounts by prompting for a username, full name, and password, displaying the account details upon successful creation.

- **no-prompt-add-local-user.sh**: This script facilitates the creation of new local user accounts, where the user provides a username and comment as command-line arguments. It automatically generates a password for the account and displays the username, comment, password, and host upon successful creation.

- **generate-a-random-password.sh**: This script generates random passwords with customizable lengths and an option to include a special character. It also supports verbose mode for detailed output.

- **user_account_management.sh**: This script handles user account management on Unix-like systems, offering options to disable, delete, or archive user accounts and their home directories.
  [User Account Management - README.md](https://github.com/Kamzie/User-account-management-script)

## Log Analysis Scripts

### 2. Log Analysis

- **failed_login_logs.sh**: Identifies failed login attempts from a given log file.
- **potential_attackers.sh**: Analyzes log files to identify potential attackers and their IP addresses.

## Personal Use Scripts

### 3. Personal Use Scripts

- **update_apps.sh**: Updates and upgrades applications on Ubuntu system, and performs autoremove and autoclean.
- **check_partitions.sh**: Organizes and displays partitions, ordering them by size from high to low. Removes boot/MBR partitions and shows only actual SSDs/NVME drives and any inserted removable USB drives/storage.

Feel free to explore the scripts, provide feedback, or contribute to their improvement. Happy scripting!
