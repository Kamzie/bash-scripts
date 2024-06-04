# Learning Journey into Bash Scripting

Welcome to my bash scripting journey! In this repository, I'm documenting my progress and sharing the scripts I've developed while learning bash scripting. Below, you'll find a brief overview of each script I've created. Additionally, you may find links to README.md files for scripts that require more detailed information.

## Linux Administration Scripts

### 1. User Management Scripts

- **01_add_local_user_prompt.sh**: This script allows for the creation of new local user accounts by prompting for a username, full name, and password, displaying the account details upon successful creation.

  ![Screenshot of terminal once 01_add_local_user_prompt.sh has completed](./add_local.png)

- **02_no_prompt_add_local_user.sh**: This script facilitates the creation of new local user accounts, where the user provides a username and comment as command-line arguments. It automatically generates a password for the account and displays the username, comment, password, and host upon successful creation.

  ![Screenshot of terminal once 02_no-prompt_add_local_user.sh has completed](./no_prompt.png)

- **03_generate_a_random_password.sh**: This script generates random passwords with customizable lengths and an option to include a special character. It also supports verbose mode for detailed output.

  ![Screenshot of terminal once 03_generate_a_random_password.sh has completed](./password1.png)

- **04_user_account_management.sh**: This script handles user account management on Unix-like systems, offering options to disable, delete, or archive user accounts and their home directories.  
  [User Account Management - README.md](https://github.com/Kamzie/User-account-management-script)

## Network Management Scripts

### 2. Network Monitoring and Automation (SSH into Large Network of Servers)

- **05_ping_servers.sh**: This script pings servers from a file, reporting their online/offline status. Requires pre-configured SSH key-based authentication.

  ![Screenshot of terminal once 05_ping_servers.sh has completed](./ping_servers.png)

- **06_remote_execution.sh**: Allows executing a single command on multiple servers remotely. It supports options for verbosity, enabling root privileges, and dry run mode. The script reads a list of servers from a file and executes the specified command on each server. Requires pre-configured SSH key-based authentication.
  [Remote execution - README.md](https://github.com/Kamzie/Remote-execution-script)

## Log Analysis Scripts

### 3. Log Analysis

- **07_potential_attackers.sh**: The script analyzes a log file (07_syslog_sample) for failed login attempts by IP address, identifying those with counts exceeding a predefined limit. It displays the count, IP, and location for each such occurrence.

  ![Screenshot of terminal once 07_potential_attackers.sh has completed](./potential_attackers.png)

- **08_top_three_urls.sh**: This script extracts URLs from a web server log file (08_visited_log), counts their occurrences, and displays the top three most visited URLs.

## Personal Use Scripts

### 4. Simple scripts of commands I tend to use often

- **09_update_system.sh**: This script ensures it is run with root privileges, then updates and upgrades all packages. It removes unnecessary packages and cleans the package cache, providing success or failure messages for each step, and ends with a completion message.

  ![Screenshot of terminal once 09_updated_system.sh has completed](./update_system.png)

- **10_check_partitions.sh**: Organizes and displays partitions, ordering them by size from high to low. Removes boot/MBR partitions and shows only actual SSDs/NVME drives and any inserted removable USB drives/storage, allowing me to differentiate between Ubuntu and Windows 11 HDDs in my dual-boot system.

  ![Screenshot of terminal once 10_check_partitions.sh has completed](./check_partitions.png)

Feel free to explore the scripts, provide feedback, or contribute to their improvement. Happy scripting!
