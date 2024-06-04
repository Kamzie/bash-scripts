#!/bin/bash

# This script creates a new user on the local system.
# User will supply a username and a comment specified on the command line.
# A password will be automatically generated for the account.
# The username, comment, password, and host for the account will be displayed.

# Checks for superuser (root) privilege
if [[ "${UID}" -ne 0 ]]
then
  echo "You do not have root privileges."
  exit 1
fi

# Make sure a account name has been provided.
if [[ "${#}" -lt 2 ]]
then
  echo "Please provide username and comments: ${0}"
  exit 1
fi

# Gain username from arguments given.
USER_NAME="${1}"

# While loop to gain arguments for comments.
shift
COMMENT="${@}"

# Create user account
useradd -c "${COMMENT}" -m ${USER_NAME}

# Error message if account cannot be created.
if [[ "${?}" -ne 0 ]]
then
  echo "Account creation failed."
  exit 1
fi

# Generate a set a random password.
PASSWORD=$(date +%s%N | sha256sum | head -c48)

# Try setting password using --stdin first
echo ${PASSWORD} | passwd --stdin ${USER_NAME} &>/dev/null

# Check if password command succeeded.
if [[ "${?}" -ne 0 ]]  
then
  # If --stdin failed, use -S as fallback
  echo "${PASSWORD}" | passwd -S ${USER_NAME} &>/dev/null
  # Check if password command succeeded.
  if [[ "${?}" -ne 0 ]]
  then
    echo "Password creation failed."
    exit 1
  fi
fi

# Force password change on first login
passwd -e ${USER_NAME}

# Display the username, comments, password and host account.
HOSTNAME=$(hostname -s)
echo
echo "Username:"
echo "${USER_NAME}"
echo
echo "Real Name:"
echo "${COMMENT}"
echo 
echo "Password:"
echo "${PASSWORD}"
echo
echo "Host:"
echo "${HOSTNAME}"
echo

exit 0

  

