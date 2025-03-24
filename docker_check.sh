#!/bin/bash
# docker_check.sh
# Auto-starts Docker Desktop if not running
# Last modified: 2025-03-24
# Author: @mawazawa

# Dev, Don't Kill My Vibe - Docker Edition

function start_docker() {
  if ! curl -s --unix-socket /var/run/docker.sock http://ping > /dev/null; then
    echo "🚨 Docker Desktop is not running. Launching now..."
    open -a Docker
    echo "⏳ Waiting for Docker to start..."
    until curl -s --unix-socket /var/run/docker.sock http://ping > /dev/null; do
      sleep 1
    done
    echo "✅ Docker Desktop is now running!"
  else
    echo "✅ Docker Desktop is already running!"
  fi
}

# Run the function
start_docker