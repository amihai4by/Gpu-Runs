#!/bin/bash

# Start your CUDA application in the background
./add.v3 &

# Get the process ID of the last background process (your application)
APP_PID=$!

# Wait for the specified duration
sleep $1

# After the sleep, terminate the application
kill $APP_PID
