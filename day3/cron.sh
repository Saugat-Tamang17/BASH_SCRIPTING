#!/bin/bash

# Terminate the program if any command fails 
set -e

SOURCE="/mnt/c/Saugat-Tamang-024BSCIT036/BASH_SCRIPTING/day3/source/testing.txt"

DESTINATION="/mnt/c/Saugat-Tamang-024BSCIT036/BASH_SCRIPTING/day3/destination"

LOG_FILE="/mnt/c/Saugat-Tamang-024BSCIT036/BASH_SCRIPTING/day3/copy.log"

# Ensure target directory exists
mkdir -p "$DESTINATION"

# --- COPY & VERIFY ---
echo "[$(date +'%Y-%m-%d %H:%M:%S')] Starting file copy..." >> "$LOG_FILE"

# Copy the file
cp "$SOURCE" "$DESTINATION/"

# Check if the file exists in the destination
if [ -f "${DESTINATION}/$(basename "$SOURCE")" ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] SUCCESS: Copied $(basename "$SOURCE") to ${DESTINATION}/" >> "$LOG_FILE"
else
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] ERROR: Copy failed!" >> "$LOG_FILE"
    exit 1
fi


0 6 * * 1-5 /bin/bash /mnt/c/Saugat-Tamang-024BSCIT036/BASH_SCRIPTING/day3/cron.sh