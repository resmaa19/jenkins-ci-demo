#!/bin/bash

echo "Version 2.0.0"   # ✅ REQUIRED LINE

echo "App Version: $APP_VERSION"
echo "Build Time: $BUILD_TS"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Uptime: $(uptime)"

echo "Disk Usage:"
df -h

echo "Memory Usage:"
free -m

echo "Operating System:"
uname -a

echo "CPU Info:"   # ✅ NEW system info line (requirement)
lscpu

exit 0

