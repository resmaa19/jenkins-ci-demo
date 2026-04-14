#!/bin/bash

echo "Running tests..."

./app.sh

if [ $? -eq 0 ]; then
echo "PASS"
exit 1

else
echo "FAIL"
exit 1
fi

