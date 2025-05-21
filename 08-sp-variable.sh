#!/bin/bash

echo "all variables passed to the script: $@"
echo "number of variables: $#"
echo "script name: $PWD"
echo "user running this script: $USER"
echo "Home directory: $HOME"
echo "PID of the script: $$"
sleep 10 &
echo "PID of last command in background: $!"