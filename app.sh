#!/bin/bash
echo "App Version: $APP_VERSION"
echo "Build Time: $BUILD_TS"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Uptime: $(uptime)"
echo "Disk Usage:"
df -h 
echo "Memory Usage:"
free -m

exit 0

