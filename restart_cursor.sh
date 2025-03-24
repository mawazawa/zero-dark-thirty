#!/bin/bash

# Script to restart Cursor with improved text selection
# Kill existing Cursor processes
echo "Stopping Cursor processes..."
killall Cursor

# Wait for processes to terminate
sleep 2

# Start Cursor
echo "Starting Cursor..."
open -a Cursor
