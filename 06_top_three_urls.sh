#!/bin/bash

# Display the top three most visited URLs for a given web server log file.

LOG_FILE="${1}" # Assign the provided file path to LOG_FILE variable.

# Check if the log file exists. If not, display an error message and exit.
if [[ ! -e "${LOG_FILE}" ]]; then
  echo "Cannot open ${LOG_FILE}" >&2
  exit 1
fi

# Extracts the URLs from the log file, counts their occurrences, and displays the top three most visited URLs.
cut -d '"' -f 2 "${LOG_FILE}" | cut -d ' ' -f 2 | sort | uniq -c | sort -n | tail -3

exit 0

