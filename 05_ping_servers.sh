#!/bin/bash

# This script pings a list of servers and reports their health status.

# Server list file location (modify as needed).
SERVER_LIFE='/vagrant/05_servers'

# Check if server list file exists.
if [[ ! -e ${SERVER_LIFE} ]]; then
  echo "Cannot open ${SERVER_LIFE}." >&2
  exit 1
fi

# Iterate through server list to check status.
for SERVER in $(cat ${SERVER_LIFE}); do
       	echo "Pinging ${SERVER}"
  ping -c 1 ${SERVER} &> /dev/null
  
  if [[ $? -ne 0 ]]; then
    echo "${SERVER} down."
    echo  
  else
    echo "${SERVER} is up."
    echo
  fi
done

exit 0


