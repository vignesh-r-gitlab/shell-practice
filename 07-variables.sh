#!/bin/bash

echo "all arguments passed to script:$@"
echo "number of variables passed to script:$#"
echo "script name:$0"
echo "present working directory:$PWD"
echo "who is running:$USER"
echo "home directory of current user:$HOME"
echo "PID of the script:$$"
sleep 10 &
echo "PID of the recently background running process:$!"
echo "all aarguments passed to the script:$*"
echo "exit status of previous command:$?"