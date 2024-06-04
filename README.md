# Learning Journey into Bash Scripting

Welcome to my bash scripting journey! In this repository, I'm documenting my progress and sharing the scripts I've developed while learning bash scripting. Below, you'll find a brief overview of each script I've created. Additionally, you may find links to README.md files for scripts that require more detailed information.

## Linux Administration Scripts

### 1. User Management Scripts

- **01_add-local-user-prompt.sh**: This script allows for the creation of new local user accounts by prompting for a username, full name, and password, displaying the account details upon successful creation.

- **02_no-prompt-add-local-user.sh**: This script facilitates the creation of new local user accounts, where the user provides a username and comment as command-line arguments. It automatically generates a password for the account and displays the username, comment, password, and host upon successful creation.

- **03_generate-a-random-password.sh**: This script generates random passwords with customizable lengths and an option to include a special character. It also supports verbose mode for detailed output.

- **04_user-account-management.sh**: This script handles user account management on Unix-like systems, offering options to disable, delete, or archive user accounts and their home directories.  
  [User Account Management - README.md](https://github.com/Kamzie/User-account-management-script)

## Log Analysis Scripts

### 2. Log Analysis

- **05_potential_attackers.sh**: The script analyzes a log file (syslog_sample) for failed login attempts by IP address, identifying those with counts exceeding a predefined limit. It displays the count, IP, and location for each such occurrence.

- **06_top_three_urls.sh**: This script extracts URLs from a web server log file (visited_log), counts their occurrences, and displays the top three most visited URLs.

## Network Management Scripts

### 3. Network Monitoring and Automation (SSH into Large Network of Servers)

- **07_ping_servers.sh**: This script pings a list of servers to check their status. It reads server names from a file and reports whether each server is up or down.

- **08_remote_execution.sh**: Allows executing a single command on multiple servers remotely. It supports options for verbosity, enabling root privileges, and dry run mode. The script reads a list of servers from a file and executes the specified command on each server.  
  [Remote execution - README.md](https://github.com/Kamzie/Remote-execution-script)

## Personal Use Scripts

### 4. Simple scripts of commands I tend to use often

- **09_update_system.sh**: Updates and upgrades applications on Ubuntu system, and performs autoremove and autoclean.

- **10_check_partitions.sh**: Organizes and displays partitions, ordering them by size from high to low. Removes boot/MBR partitions and shows only actual SSDs/NVME drives and any inserted removable USB drives/storage, allowing me to differentiate between Ubuntu and Windows 11 HDDs in my dual-boot system.

Feel free to explore the scripts, provide feedback, or contribute to their improvement. Happy scripting!
