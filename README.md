<span style="color:#007acc">Bash Scripting Learning Journey</span>
Welcome to my <span style="color:#007acc">bash scripting journey</span>! In this repository, I'm documenting my progress and sharing the scripts I've developed while learning bash scripting. Below, you'll find a brief overview of each script I've created. Additionally, you may find links to README.md files for scripts that require more detailed information.

<span style="color:#4caf50">Linux Administration Scripts</span>

1. <span style="color:#f44336">User Management Scripts</span>
   <span style="color:#673ab7">01_add-local-user-prompt.sh:</span> This script allows for the creation of new local user accounts by prompting for a username, full name, and password, displaying the account details upon successful creation.

<span style="color:#673ab7">02_no-prompt-add-local-user.sh:</span> This script facilitates the creation of new local user accounts, where the user provides a username and comment as command-line arguments. It automatically generates a password for the account and displays the username, comment, password, and host upon successful creation.

<span style="color:#673ab7">03_generate-a-random-password.sh:</span> This script generates random passwords with customizable lengths and an option to include a special character. It also supports verbose mode for detailed output.

<span style="color:#673ab7">04_user-account-management.sh:</span> This script handles user account management on Unix-like systems, offering options to disable, delete, or archive user accounts and their home directories.
<span style="color:#007acc">User Account Management - README.md</span>

<span style="color:#4caf50">Log Analysis Scripts</span> 2. <span style="color:#f44336">Log Analysis</span>
<span style="color:#673ab7">05_potential_attackers.sh:</span> The script analyzes a log file (syslog_sample) for failed login attempts by IP address, identifying those with counts exceeding a predefined limit. It displays the count, IP, and location for each such occurrence.

<span style="color:#673ab7">06_top_three_urls.sh:</span> This script extracts URLs from a web server log file (visited_log), counts their occurrences, and displays the top three most visited URLs.

<span style="color:#4caf50">Network Management Scripts</span> 3. <span style="color:#f44336">Network Monitoring and Automation (SSH into Large Network of Servers)</span>
<span style="color:#673ab7">07_ping_servers.sh:</span> This script pings a list of servers to check their status. It reads server names from a file and reports whether each server is up or down.

<span style="color:#673ab7">08_remote_execution.sh:</span> Allows executing a single command on multiple servers remotely. It supports options for verbosity, enabling root privileges, and dry run mode. The script reads a list of servers from a file and executes the specified command on each server.
<span style="color:#007acc">Remote execution - README.md</span>

<span style="color:#4caf50">Personal Use Scripts</span> 4. <span style="color:#f44336">Simple scripts of commands I tend to use often</span>
<span style="color:#673ab7">update_system.sh:</span> Updates and upgrades applications on Ubuntu system, and performs autoremove and autoclean.

<span style="color:#673ab7">check_partitions.sh:</span> Organizes and displays partitions, ordering them by size from high to low. Removes boot/MBR partitions and shows only actual SSDs/NVME drives and any inserted removable USB drives/storage, allowing me to differentiate between Ubuntu and Windows 11 HDDs in my dual-boot system.

Feel free to explore the scripts, provide feedback, or contribute to their improvement. Happy scripting!
