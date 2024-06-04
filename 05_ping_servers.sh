#!/bin/bash

# This script pings a list of servers and reports their status.

SERVER_LIFE='/vagrant/servers'

if [[ ! -e ${SERVER_LIFE} ]]; then
  echo "Cannot open ${SERVER_LIFE}." >&2
  exit 1
fi

for SERVER in $(cat ${SERVER_LIFE}); do
       	echo "Pinging ${SERVER}"
  ping -c 1 ${SERVER} &> /dev/null
  
  if [[ $? -ne 0 ]]; then
    echo "${SERVER} down."
  else
    echo "${SERVER} is up."
   fi
done

