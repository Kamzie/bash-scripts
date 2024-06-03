#!/bin/bash

# This script creates a new users to the local system
# You will be prompted for a username, fullname and password.
# The username, password and host will be displayed in account creation.

# Checks for superuser (root) privileges, otherwise exit's with status of 1.
if [[ "${UID}" -ne 0 ]]
then
  echo 'You do not have root privileges.'
  exit 1
fi

# Ask for a username. (Login)
read -p 'Please enter a username: ' USER_NAME

# Ask for full name. (content for description)
read -p 'Please enter your full name: ' COMMENT

# Ask to enter password
read -p 'Please enter a password: ' PASSWORD

# Create user account
useradd -c "${COMMENT}" -m ${USER_NAME}

# Error message if account cannot be created.
if [[ "${?}" -ne 0 ]]
then
  echo 'Account creation failed.'
  exit 1
fi

# Set the password for the user.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Error message if password cannot be set.
if [[ "${?}" -ne 0 ]]
then
  echo 'password creation failed.'
  exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME}

# Display username, password, and where the host account was created.
echo
echo 'username:'
echo "${USER_NAME}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"
echo
exit 0


