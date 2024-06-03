#!/bin/bash

# Count the number of failed logins by IP address from the provided access_log.
# If any IPs have over the LIMIT number of failures, display the count, IP, and location.

# Fixed number of failed logins
LIMIT=10

# Default argument for the access_log file
LOG_FILE="${1}"

# Check if file has been provided
if [[ ! -e ${LOG_FILE} ]]; then
  echo "No file found" >&2
  exit 1
fi

# Display the CSV header.
echo 'Count--IP--Location'

# Filter for failed attempts, list IP address, sort, gather uniq -c, sort for counts and filter results >= 10, save to failed_attempts.txt
grep "Failed" ${LOG_FILE} | awk '{print $11}' | sort | uniq -c | sort -nr | grep -v admin | while read COUNT IP; do
        if [[ ${COUNT} -gt ${LIMIT} ]]; then
                LOCATION=$(geoiplookup ${IP} | awk -F ', ' '{print $2}')
                echo "$COUNT--$IP--$LOCATION"
        fi
done

exit 0


#############################################
# Another soltuion - No while loop solution #
#############################################

#!/bin/bash

## Count the number of failed logins by IP address.
## If there are any IPs with over the LIMIT failures, display the count, IP, and location.

## Check if file has been provided

#LOG_FILE="${1}"
#
#if [[ ! -e ${LOG_FILE} ]]; then
#  echo "No file found" >&2
#  exit 1
#fi

## Filter for failed attempts, list IP address, sort, gather uniq -c, sort for counts and filter results >= 10, save to failed_attempts.txt
#cat ${LOG_FILE} | grep "Failed" | awk '{print $11}' | sort | uniq -c | sort -n | awk '$1 >= 10 && $2 != "admin"' > failed_attempts.txt

##  Use the stored data with 'geoiplookup' to filter for location and save this to ip_locations.txt
#cat failed_attempts.txt | awk '{system("geoiplookup " $2)}' | awk '{print $5 " " $6}' > ip_locations.txt

##  Create csv file with header Count,IP,Location.
#echo "Count,IP,Location" > Sys_Output.csv

## Combine the two files and use awk to print out and structure relevant data.
#paste failed_attempts.txt ip_locations.txt | awk '{print $1 "," $2 "," $3 " " $4}' >> Sys_Output.csv

## Output the final structured data.
#cat Sys_Output.csv

#exit 0
