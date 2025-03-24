#!/bin/bash

# Script to open Terminal app with command to restart Cursor
open -a Terminal

echo "To restart Cursor, copy this command and paste into the Terminal window:"
echo "cd \"$(pwd)\" && ./restart_cursor.sh"
