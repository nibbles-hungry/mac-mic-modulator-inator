#!/bin/bash
#<swiftbar.type>streamable</swiftbar.type>

# Define the named pipe file
PIPE_FILE=/tmp/mic_status.pipe

# Ensure the named pipe exists
if [ ! -p "$PIPE_FILE" ]; then
    rm -f "$PIPE_FILE"  # Remove any existing file
    mkfifo "$PIPE_FILE" # Create a new named pipe
fi

# Read the latest status from the pipe
while true; do
    if read MIC_STATUS < "$PIPE_FILE"; then
        echo "date $$ $MIC_STATUS" >> /Users/taposhdesai/swiftbarlogs/mic_toggle.log
        echo "~"
        echo "$MIC_STATUS"
    else
        echo "date $$ ❓" >> /Users/taposhdesai/swiftbarlogs/mic_toggle.log
        echo "❓" # Default icon if no status received
    fi

    echo "---"
    echo "Listening for mic events from $PIPE_FILE"
    sleep 1
done